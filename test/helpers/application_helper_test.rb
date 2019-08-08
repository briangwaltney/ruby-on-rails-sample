# frozen_string_literal: true

require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test 'full title helper' do
    assert_equal full_title, 'Ruby Sudoku Solver'
    assert_equal full_title('Help'), 'Help | Ruby Sudoku Solver'
  end
end
