import 'package:flutter/material.dart';
import 'package:cloudkeja/app/data/models/admin/review.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage(name: 'PropertyReviewsRoute')
class PropertyReviewsPage extends StatefulWidget {
  const PropertyReviewsPage({super.key});

  @override
  State<PropertyReviewsPage> createState() => _PropertyReviewsState();
}

class _PropertyReviewsState extends State<PropertyReviewsPage> {
  List<Review> reviews = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadReviews();
  }

  Future<void> loadReviews() async {
    setState(() => isLoading = true);
    try {
      reviews = await AdminRepository().getReviews();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load reviews: $e'), backgroundColor: Colors.red),
      );
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  void showEditDialog(Review review) {
    final formKey = GlobalKey<FormState>();
    int rating = review.rating;
    String comment = review.comment;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit Review'),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButtonFormField<int>(
                value: rating,
                decoration: const InputDecoration(labelText: 'Rating'),
                items: [1, 2, 3, 4, 5].map((r) => DropdownMenuItem(value: r, child: Text('$r Stars'))).toList(),
                onChanged: (v) => rating = v ?? 1,
              ),
              TextFormField(
                initialValue: comment,
                decoration: const InputDecoration(labelText: 'Comment'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (v) => comment = v,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                try {
                  await AdminRepository().updateReview(Review(
                    id: review.id,
                    propertyId: review.propertyId,
                    userId: review.userId,
                    rating: rating,
                    comment: comment,
                  ));
                  if (mounted) Navigator.pop(context);
                  loadReviews();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to update review: $e'), backgroundColor: Colors.red),
                  );
                }
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Property Reviews')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : reviews.isEmpty
              ? const Center(child: Text('No reviews'))
              : ListView.builder(
                  itemCount: reviews.length,
                  itemBuilder: (context, index) {
                    final review = reviews[index];
                    return ListTile(
                      title: Text('Property ${review.propertyId} - Rating: ${review.rating}'),
                      subtitle: Text(review.comment),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () => showEditDialog(review),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () async {
                              try {
                                await AdminRepository().deleteReview(review.id);
                                loadReviews();
                              } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Failed to delete review: $e'), backgroundColor: Colors.red),
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
    );
  }
}