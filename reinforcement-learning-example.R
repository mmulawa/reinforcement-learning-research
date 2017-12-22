library(ReinforcementLearning)
data("tictactoe")
head(tictactoe, 5)
control <- list(alpha = 0.2, gamma = 0.4, epsilon = 0.1)
model <- ReinforcementLearning(tictactoe, s = "State", a = "Action", r = "Reward", s_new = "NextState", iter = 1, control = control)
policy(model)

