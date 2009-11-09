require 'test/unit'
require 'presentation'

class PresentationTest < Test::Unit::TestCase
  def test_has_title_and_presenter
    p = Presentation.new("TITLE", "PRESENTER")
    assert_equal "TITLE", p.title
    assert_equal "PRESENTER", p.presenter
  end

  def test_can_add_score
    p = Presentation.new("TITLE", "PRESENTER")
    p.add_score(4)
  end

  def test_can_report_average_score_with_one_score
    p = Presentation.new("TITLE", "PRESENTER")
    p.add_score(4)
    assert_equal 4, p.average_score
  end

  def test_can_report_average_score_with_two_scores
    p = Presentation.new("TITLE", "PRESENTER")
    p.add_score(4)
    p.add_score(5)
    assert_equal 4.5, p.average_score
  end
end
