
context("density_ratio()")

test_that("density_ratio()", {  
  
  #-----------------------------------------------------------------------------------
  # test for density_ratio()
  #-----------------------------------------------------------------------------------
  expect_true(exists("density_ratio"),
              info = "Error: density_ratio() is missing")
  
  expect_equal(density_ratio(alpha_propose = 1.89, alpha_previous = 0.374,
                             beta_propose = 24.76, beta_previous = 20.04,
                             x = bioassay$x, y = bioassay$y, n = bioassay$n),
               1.187524, tol= 0.001, 
               info = "Error: Incorrect result for alpha_propose = 1.89, alpha_previous = 0.374, beta_propose = 24.76 and beta_previous = 20.04.")

  expect_equal(density_ratio(alpha_propose = 0.374, alpha_previous = 1.89,
                             beta_propose = 20.04, beta_previous = 24.76,
                             x = bioassay$x, y = bioassay$y, n = bioassay$n),
               0.8420882, tol= 0.001, 
               info = "Error: Incorrect result for alpha_propose = 0.374, alpha_previous = 1.89, beta_propose = 20.04 and beta_previous = 24.76.")
  
  expect_equal(density_ratio(alpha_propose = 1, alpha_previous = 1,
                             beta_propose = 20, beta_previous = 20,
                             x = bioassay$x, y = bioassay$y, n = bioassay$n),
               1, tol= 0.001, 
               info = "Error: Incorrect result for alpha_propose = 1, alpha_previous = 1, beta_propose = 20 and beta_previous = 20.")
  
  expect_equal(density_ratio(alpha_propose = 0, alpha_previous = 1,
               beta_propose = 20, beta_previous = 20,
               x = bioassay$x, y = bioassay$y, n = bioassay$n),
               0.1058172, tol= 0.001, 
               info = "Error: Incorrect result for alpha_propose = 0, alpha_previous = 1, beta_propose = 20 and beta_previous = 20.")
  
})




