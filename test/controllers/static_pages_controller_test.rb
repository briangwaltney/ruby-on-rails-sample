# frozen_string_literal: true

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_url = 'Ruby Sudoku Solver'
  end
  test 'root should get home' do
    get root_url
    assert_response :success
    assert_select 'title', @base_url.to_s
  end

  test 'should get about' do
    get static_pages_about_url
    assert_response :success
    assert_select 'title', "About | #{@base_url}"
  end

  test 'should get help' do
    get static_pages_help_url
    assert_response :success
    assert_select 'title', "Help | #{@base_url}"
  end
end
