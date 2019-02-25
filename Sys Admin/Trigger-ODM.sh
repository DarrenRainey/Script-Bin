# Use the following commands if you are having problems with
# -bash: fork: Cannot allocate memory
# This will force linux to run the out of memory killer and kill the
# program using too much RAM.

echo 1 > /proc/sys/kernel/sysrq
echo f > /proc/sysrq-trigger
echo 0 > /proc/sys/kernel/sysrq
