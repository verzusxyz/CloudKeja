import 'package:cloudkeja/app/services/api_client/_api_http_client.dart'  as ApiClient;
import 'package:cloudkeja/app/data/models/user.dart';
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

  Future<User> updateUserRole(User user) async {
    var response = await ApiClient.put('/users/${user.id}', data: user.toJson());
    return User.fromJson(response.data);
  }

  Future<List<Gateway>> getGateways() async {
    var response = await ApiClient.get('/gateways');
    return (response.data as List).map((e) => Gateway.fromJson(e)).toList();
  }

  Future<Gateway> createGateway(Gateway gateway) async {
    var response = await ApiClient.post('/gateways', data: gateway.toJson());
    return Gateway.fromJson(response.data);
  }

  Future<Gateway> updateGateway(Gateway gateway) async {
    var response = await ApiClient.put('/gateways/${gateway.id}', data: gateway.toJson());
    return Gateway.fromJson(response.data);
  }

  Future<void> deleteGateway(int id) async {
    await ApiClient.delete('/gateways/$id');
  }

  Future<List<Plan>> getPlans() async {
    var response = await ApiClient.get('/plans');
    return (response.data as List).map((e) => Plan.fromJson(e)).toList();
  }

  Future<Plan> createPlan(Plan plan) async {
    var response = await ApiClient.post('/plans', data: plan.toJson());
    return Plan.fromJson(response.data);
  }

  Future<Plan> updatePlan(Plan plan) async {
    var response = await ApiClient.put('/plans/${plan.id}', data: plan.toJson());
    return Plan.fromJson(response.data);
  }

  Future<void> deletePlan(int id) async {
    await ApiClient.delete('/plans/$id');
  }

  Future<List<PlanSubscribe>> getPlanSubscribes() async {
    var response = await ApiClient.get('/plan_subscribes');
    return (response.data as List).map((e) => PlanSubscribe.fromJson(e)).toList();
  }

  Future<PlanSubscribe> createPlanSubscribe(PlanSubscribe subscribe) async {
    var response = await ApiClient.post('/plan_subscribes', data: subscribe.toJson());
    return PlanSubscribe.fromJson(response.data);
  }

  Future<PlanSubscribe> updatePlanSubscribe(PlanSubscribe subscribe) async {
    var response = await ApiClient.put('/plan_subscribes/${subscribe.id}', data: subscribe.toJson());
    return PlanSubscribe.fromJson(response.data);
  }

  Future<void> deletePlanSubscribe(int id) async {
    await ApiClient.delete('/plan_subscribes/$id');
  }

  Future<List<Income>> getIncomes() async {
    var response = await ApiClient.get('/incomes');
    return (response.data as List).map((e) => Income.fromJson(e)).toList();
  }

  Future<Income> createIncome(Income income) async {
    var response = await ApiClient.post('/incomes', data: income.toJson());
    return Income.fromJson(response.data);
  }

  Future<Income> updateIncome(Income income) async {
    var response = await ApiClient.put('/incomes/${income.id}', data: income.toJson());
    return Income.fromJson(response.data);
  }

  Future<void> deleteIncome(int id) async {
    await ApiClient.delete('/incomes/$id');
  }

  Future<List<IncomeCategory>> getIncomeCategories() async {
    var response = await ApiClient.get('/income_categories');
    return (response.data as List).map((e) => IncomeCategory.fromJson(e)).toList();
  }

  Future<IncomeCategory> createIncomeCategory(IncomeCategory category) async {
    var response = await ApiClient.post('/income_categories', data: category.toJson());
    return IncomeCategory.fromJson(response.data);
  }

  Future<IncomeCategory> updateIncomeCategory(IncomeCategory category) async {
    var response = await ApiClient.put('/income_categories/${category.id}', data: category.toJson());
    return IncomeCategory.fromJson(response.data);
  }

  Future<void> deleteIncomeCategory(int id) async {
    await ApiClient.delete('/income_categories/$id');
  }

  Future<List<Expense>> getExpenses() async {
    var response = await ApiClient.get('/expenses');
    return (response.data as List).map((e) => Expense.fromJson(e)).toList();
  }

  Future<Expense> createExpense(Expense expense) async {
    var response = await ApiClient.post('/expenses', data: expense.toJson());
    return Expense.fromJson(response.data);
  }

  Future<Expense> updateExpense(Expense expense) async {
    var response = await ApiClient.put('/expenses/${expense.id}', data: expense.toJson());
    return Expense.fromJson(response.data);
  }

  Future<void> deleteExpense(int id) async {
    await ApiClient.delete('/expenses/$id');
  }

  Future<List<ExpenseCategory>> getExpenseCategories() async {
    var response = await ApiClient.get('/expense_categories');
    return (response.data as List).map((e) => ExpenseCategory.fromJson(e)).toList();
  }

  Future<ExpenseCategory> createExpenseCategory(ExpenseCategory category) async {
    var response = await ApiClient.post('/expense_categories', data: category.toJson());
    return ExpenseCategory.fromJson(response.data);
  }

  Future<ExpenseCategory> updateExpenseCategory(ExpenseCategory category) async {
    var response = await ApiClient.put('/expense_categories/${category.id}', data: category.toJson());
    return ExpenseCategory.fromJson(response.data);
  }

  Future<void> deleteExpenseCategory(int id) async {
    await ApiClient.delete('/expense_categories/$id');
  }

  Future<List<Withdraw>> getWithdrawals() async {
    var response = await ApiClient.get('/withdrawals');
    return (response.data as List).map((e) => Withdraw.fromJson(e)).toList();
  }

  Future<Withdraw> updateWithdraw(Withdraw withdraw) async {
    var response = await ApiClient.put('/withdrawals/${withdraw.id}', data: withdraw.toJson());
    return Withdraw.fromJson(response.data);
  }

  Future<List<WithdrawMethod>> getWithdrawMethods() async {
    var response = await ApiClient.get('/withdraw_methods');
    return (response.data as List).map((e) => WithdrawMethod.fromJson(e)).toList();
  }

  Future<WithdrawMethod> createWithdrawMethod(WithdrawMethod method) async {
    var response = await ApiClient.post('/withdraw_methods', data: method.toJson());
    return WithdrawMethod.fromJson(response.data);
  }

  Future<WithdrawMethod> updateWithdrawMethod(WithdrawMethod method) async {
    var response = await ApiClient.put('/withdraw_methods/${method.id}', data: method.toJson());
    return WithdrawMethod.fromJson(response.data);
  }

  Future<void> deleteWithdrawMethod(int id) async {
    await ApiClient.delete('/withdraw_methods/$id');
  }

  Future<List<RefundRequest>> getRefundRequests() async {
    var response = await ApiClient.get('/refund_requests');
    return (response.data as List).map((e) => RefundRequest.fromJson(e)).toList();
  }

  Future<RefundRequest> updateRefundRequest(RefundRequest request) async {
    var response = await ApiClient.put('/refund_requests/${request.id}', data: request.toJson());
    return RefundRequest.fromJson(response.data);
  }

  Future<List<RefundReason>> getRefundReasons() async {
    var response = await ApiClient.get('/refund_reasons');
    return (response.data as List).map((e) => RefundReason.fromJson(e)).toList();
  }

  Future<RefundReason> createRefundReason(RefundReason reason) async {
    var response = await ApiClient.post('/refund_reasons', data: reason.toJson());
    return RefundReason.fromJson(response.data);
  }

  Future<RefundReason> updateRefundReason(RefundReason reason) async {
    var response = await ApiClient.put('/refund_reasons/${reason.id}', data: reason.toJson());
    return RefundReason.fromJson(response.data);
  }

  Future<void> deleteRefundReason(int id) async {
    await ApiClient.delete('/refund_reasons/$id');
  }

  Future<List<Support>> getSupports() async {
    var response = await ApiClient.get('/supports');
    return (response.data as List).map((e) => Support.fromJson(e)).toList();
  }

  Future<Support> updateSupport(Support support) async {
    var response = await ApiClient.put('/supports/${support.id}', data: support.toJson());
    return Support.fromJson(response.data);
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

  Future<Review> updateReview(Review review) async {
    var response = await ApiClient.put('/reviews/${review.id}', data: review.toJson());
    return Review.fromJson(response.data);
  }

  Future<void> deleteReview(int id) async {
    await ApiClient.delete('/reviews/$id');
  }

  Future<List<PageContent>> getPageContents() async {
    var response = await ApiClient.get('/page_contents');
    return (response.data as List).map((e) => PageContent.fromJson(e)).toList();
  }

  Future<PageContent> updatePageContent(PageContent content) async {
    var response = await ApiClient.put('/page_contents/${content.id}', data: content.toJson());
    return PageContent.fromJson(response.data);
  }
}