import 'package:flutter/material.dart';
import 'package:get/Get.dart';
import 'package:cloudkeja/app/data/models/review.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository.dart';

class PropertyReviewsPage extends StatefulWidget {
  const PropertyReviewsPage({super.key});

  @override
  State<PropertyReviewsPage> createState() => _PropertyReviewsState();
}

class _PropertyReviewsState extends State<PropertyReviewsPage> {
  List<Review> reviews = [];

  @override
  void initState() {
    super.initState();
    loadReviews();
  }

  Future<void> loadReviews() async {
    try {
      reviews = await AdminRepository().getReviews();
      setState(() {});
    } catch (e) {
      Get.snackbar('Error', 'Failed to load reviews: $e');
    }
  }

  void showEditDialog(Review review) {
    final formKey = GlobalKey<FormState>();
    int rating = review.rating;
    String comment = review.comment;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit Review'),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButtonFormField<int>(
                value: rating,
                decoration: InputDecoration(labelText: 'Rating'),
                items: [1,2,3,4,5].map((r) => DropdownMenuItem(value: r, child: Text('$r Stars'))).toList(),
                onChanged: (value) => rating = value ?? 1,
              ),
              TextFormField(
                initialValue: comment,
                decoration: InputDecoration(labelText: 'Comment'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (value) => comment = value,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                try {
                  await AdminRepository().updateReview(Review(id: review.id, propertyId: review.propertyId, userId: review.userId, rating: rating, comment: comment));
                  Navigator.pop(context);
                  loadReviews();
                } catch (e) {
                  Get.snackbar('Error', 'Failed to update review: $e');
                }
              }
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Property Reviews')),
      body: ListView.builder(
        itemCount: reviews.length,
        itemBuilder: (context, index) {
          final review = reviews[index];
          return ListTile(
            title: Text('Property ${review.propertyId} - Rating: ${review.rating}'),
            subtitle: Text(review.comment),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(icon: Icon(Icons.edit), onPressed: () => showEditDialog(review)),
                IconButton(icon: Icon(Icons.delete), onPressed: () async {
                  try {
                    await AdminRepository().deleteReview(review.id);
                    loadReviews();
                  } catch (e) {
                    Get.snackbar('Error', 'Failed to delete review: $e');
                  }
                }),
              ],
            ),
          );
        },
      ),
    );
  }
}