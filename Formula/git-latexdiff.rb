class GitLatexdiff < Formula
  desc "Wrapper around git and latexdiff"
  homepage "https://gitlab.com/git-latexdiff/git-latexdiff"
  url "https://gitlab.com/git-latexdiff/git-latexdiff.git",
    :tag => "v1.2.0",
    :revision => "2bd0dcbf2a14de7c311382ed03eb24bac661ac69"

  depends_on :tex
  depends_on "latexdiff"

  def install
    bin.install "git-latexdiff"
  end

  test do
    test_git_dir = testpath/"gldtest"
    test_pdf = testpath/"test.pdf"
    system "git", "clone", "https://gitlab.com/git-latexdiff/git-latexdiff.git", test_git_dir
    (test_git_dir/"tests/bib").cd do
      system "git", "latexdiff", "@~5", "--no-view", "-o", test_pdf
    end
    assert File.exist?(test_pdf)
  end
end