age_intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequencies <- c(200, 450, 300, 1500, 700, 44)
cumulative_freq <- cumsum(frequencies)
total_freq <- sum(frequencies)
median_interval_index <- which(cumulative_freq >= total_freq / 2)[1]
median_interval <- age_intervals[median_interval_index]
median_bounds <- as.numeric(unlist(strsplit(median_interval, "-")))
interval_width <- median_bounds[2] - median_bounds[1]
approx_median <- median_bounds[1] + ((total_freq / 2 - cumulative_freq[median_interval_index - 1]) / frequencies[median_interval_index]) * interval_width
cat("Approximate Median:", approx_median, "\n")
