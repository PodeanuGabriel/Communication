require 'test_helper'

class NotificationsControllerTest < ActionController::TestCase
  setup do
    @notification = notifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notification" do
    assert_difference('Notification.count') do
      post :create, notification: { begin: @notification.begin, content: @notification.content, end: @notification.end, from: @notification.from, id: @notification.id, interval: @notification.interval, interval_type: @notification.interval_type, subject: @notification.subject, to: @notification.to }
    end

    assert_redirected_to notification_path(assigns(:notification))
  end

  test "should show notification" do
    get :show, id: @notification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notification
    assert_response :success
  end

  test "should update notification" do
    put :update, id: @notification, notification: { begin: @notification.begin, content: @notification.content, end: @notification.end, from: @notification.from, id: @notification.id, interval: @notification.interval, interval_type: @notification.interval_type, subject: @notification.subject, to: @notification.to }
    assert_redirected_to notification_path(assigns(:notification))
  end

  test "should destroy notification" do
    assert_difference('Notification.count', -1) do
      delete :destroy, id: @notification
    end

    assert_redirected_to notifications_path
  end
end
