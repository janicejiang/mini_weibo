require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home' # 检查首页是否使用正确的视图渲染
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", contact_path
  end
end
