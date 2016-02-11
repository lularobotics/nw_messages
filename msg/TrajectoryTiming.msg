########################################
# Trajectory timing parameters         #
########################################

# Wall-clock (controller) time from the start of the LQR execution, independent of 
# the dilation factors used in the past. 
float32 time_from_start

# How much to dilate time for this trajectory query.
float32 dilation_factor
