import 'package:cloudkeja/app/services/api_client/_api_http_client.dart'  as ApiClient;
import 'package:cloudkeja/app/data/models/user/user_model.dart';
import 'package:cloudkeja/app/data/models/admin/gateway.dart';
import 'package:cloudkeja/app/data/models/admin/plan.dart';
import 'package:cloudkeja/app/data/models/admin/plan_subscribe.dart';
import 'package:cloudkeja/app/data/models/admin/income.dart';
import 'package:cloudkeja/app/data/models/admin/income_category.dart';
import 'package:cloudkeja/app/data/models/admin/expense.dart';
import 'package:cloudkeja/app/data/models/admin/expense_category.dart';
import 'package:cloudkeja/app/data/models/admin/withdraw.dart';
import 'package:cloudkeja/app/data/models/admin/withdraw_method.dart';
import 'package:cloudkeja/app/data/models/admin/refund_request.dart';
import 'package:cloudkeja/app/data/models/admin/refund_reason.dart';
import 'package:cloudkeja/app/data/models/admin/support.dart';
import 'package:cloudkeja/app/data/models/admin/message.dart';
import 'package:cloudkeja/app/data/models/admin/review.dart';
import 'package:cloudkeja/app/data/models/admin/page_content.dart';

class AdminRepository {
  Future<List<User>> getUsers() async {
    var response = await ApiClient.get('/users');
    return (response.data as List).map((e) => User.fromJson(e)).toList();
  }

  Future<void> updateUserRole(User user) async {
    await ApiClient.put('/users/${user.id}', data: user.toJson());
  }

  Future<List<Gateway>> getGateways() async {
    var response = await ApiClient.get('/gateways');
    return (response.data as List).map((e) => Gateway.fromJson(e)).toList();
  }

  Future<void> createGateway(Gateway gateway) async {
    await ApiClient.post('/gateways', data: gateway.toJson());
  }

  Future<void> updateGateway(Gateway gateway) async {
    await ApiClient.put('/gateways/${gateway.id}', data: gateway.toJson());
  }

  Future<void> deleteGateway(int id) async {
    await ApiClient.delete('/gateways/$id');
  }

  Future<List<Plan>> getPlans() async {
    var response = await ApiClient.get('/plans');
    return (response.data as List).map((e) => Plan.fromJson(e)).toList();
  }

  Future<void> createPlan(Plan plan) async {
    await ApiClient.post('/plans', data: plan.toJson());
  }

  Future<void> updatePlan(Plan plan) async {
    await ApiClient.put('/plans/${plan.id}', data: plan.toJson());
  }

  Future<void> deletePlan(int id) async {
    await ApiClient.delete('/plans/$id');
  }

  Future<List<PlanSubscribe>> getPlanSubscribes() async {
    var response = await ApiClient.get('/plan_subscribes');
    return (response.data as List).map((e) => PlanSubscribe.fromJson(e)).toList();
  }

  Future<void> createPlanSubscribe(PlanSubscribe subscribe) async {
    await ApiClient.post('/plan_subscribes', data: subscribe.toJson());
  }

  Future<void> updatePlanSubscribe(PlanSubscribe subscribe) async {
    await ApiClient.put('/plan_subscribes/${subscribe.id}', data: subscribe.toJson());
  }

  Future<void> deletePlanSubscribe(int id) async {
    await ApiClient.delete('/plan_subscribes/$id');
  }

  Future<List<Income>> getIncomes() async {
    var response = await ApiClient.get('/incomes');
    return (response.data as List).map((e) => Income.fromJson(e)).toList();
  }

  Future<void> createIncome(Income income) async {
    await ApiClient.post('/incomes', data: income.toJson());
  }

  Future<void> updateIncome(Income income) async {
    await ApiClient.put('/incomes/${income.id}', data: income.toJson());
  }

  Future<void> deleteIncome(int id) async {
    await ApiClient.delete('/incomes/$id');
  }

  Future<List<IncomeCategory>> getIncomeCategories() async {
    var response = await ApiClient.get('/income_categories');
    return (response.data as List).map((e) => IncomeCategory.fromJson(e)).toList();
  }

  Future<void> createIncomeCategory(IncomeCategory category) async {
    await ApiClient.post('/income_categories', data: category.toJson());
  }

  Future<void> updateIncomeCategory(IncomeCategory category) async {
    await ApiClient.put('/income_categories/${category.id}', data: category.toJson());
  }

  Future<void> deleteIncomeCategory(int id) async {
    await ApiClient.delete('/income_categories/$id');
  }

  Future<List<Expense>> getExpenses() async {
    var response = await ApiClient.get('/expenses');
    return (response.data as List).map((e) => Expense.fromJson(e)).toList();
  }

  Future<void> createExpense(Expense expense) async {
    await ApiClient.post('/expenses', data: expense.toJson());
  }

  Future<void> updateExpense(Expense expense) async {
    await ApiClient.put('/expenses/${expense.id}', data: expense.toJson());
  }

  Future<void> deleteExpense(int id) async {
    await ApiClient.delete('/expenses/$id');
  }

  Future<List<ExpenseCategory>> getExpenseCategories() async {
    var response = await ApiClient.get('/expense_categories');
    return (response.data as List).map((e) => ExpenseCategory.fromJson(e)).toList();
  }

  Future<void> createExpenseCategory(ExpenseCategory category) async {
    await ApiClient.post('/expense_categories', data: category.toJson());
  }

  Future<void> updateExpenseCategory(ExpenseCategory category) async {
    await ApiClient.put('/expense_categories/${category.id}', data: category.toJson());
  }

  Future<void> deleteExpenseCategory(int id) async {
    await ApiClient.delete('/expense_categories/$id');
  }

  Future<List<Withdraw>> getWithdrawals() async {
    var response = await ApiClient.get('/withdrawals');
    return (response.data as List).map((e) => Withdraw.fromJson(e)).toList();
  }

  Future<void> updateWithdraw(Withdraw withdraw) async {
    await ApiClient.put('/withdrawals/${withdraw.id}', data: withdraw.toJson());
  }

  Future<List<WithdrawMethod>> getWithdrawMethods() async {
    var response = await ApiClient.get('/withdraw_methods');
    return (response.data as List).map((e) => WithdrawMethod.fromJson(e)).toList();
  }

  Future<void> createWithdrawMethod(WithdrawMethod method) async {
    await ApiClient.post('/withdraw_methods', data: method.toJson());
  }

  Future<void> updateWithdrawMethod(WithdrawMethod method) async {
    await ApiClient.put('/withdraw_methods/${method.id}', data: method.toJson());
  }

  Future<void> deleteWithdrawMethod(int id) async {
    await ApiClient.delete('/withdraw_methods/$id');
  }

  Future<List<RefundRequest>> getRefundRequests() async {
    var response = await ApiClient.get('/refund_requests');
    return (response.data as List).map((e) => RefundRequest.fromJson(e)).toList();
  }

  Future<void> updateRefundRequest(RefundRequest request) async {
    await ApiClient.put('/refund_requests/${request.id}', data: request.toJson());
  }

  Future<List<RefundReason>> getRefundReasons() async {
    var response = await ApiClient.get('/refund_reasons');
    return (response.data as List).map((e) => RefundReason.fromJson(e)).toList();
  }

  Future<void> createRefundReason(RefundReason reason) async {
    await ApiClient.post('/refund_reasons', data: reason.toJson());
  }

  Future<void> updateRefundReason(RefundReason reason) async {
    await ApiClient.put('/refund_reasons/${reason.id}', data: reason.toJson());
  }

  Future<void> deleteRefundReason(int id) async {
    await ApiClient.delete('/refund_reasons/$id');
  }

  Future<List<Support>> getSupports() async {
    var response = await ApiClient.get('/supports');
    return (response.data as List).map((e) => Support.fromJson(e)).toList();
  }

  Future<void> updateSupport(Support support) async {
    await ApiClient.put('/supports/${support.id}', data: support.toJson());
  }

  Future<List<Message>> getMessages() async {
    var response = await ApiClient.get('/messages');
    return (response.data as List).map((e) => Message.fromJson(e)).toList();
  }

  Future<void> deleteMessage(int id) async {
    await ApiClient.delete('/messages/$id');
  }

  Future<List<Review>> getReviews() async {
    var response = await ApiClient.get('/reviews');
    return (response.data as List).map((e) => Review.fromJson(e)).toList();
  }

  Future<void> updateReview(Review review) async {
    await ApiClient.put('/reviews/${review.id}', data: review.toJson());
  }

  Future<void> deleteReview(int id) async {
    await ApiClient.delete('/reviews/$id');
  }

  Future<List<PageContent>> getPageContents() async {
    var response = await ApiClient.get('/page_contents');
    return (response.data as List).map((e) => PageContent.fromJson(e)).toList();
  }

  Future<void> updatePageContent(PageContent content) async {
    await ApiClient.put('/page_contents/${content.id}', data: content.toJson());
  }
}