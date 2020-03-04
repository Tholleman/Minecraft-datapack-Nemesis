scoreboard objectives add nem_num dummy;

# A objective is also created for every mob but they are located in their respective function
# This is less efficient but these functions are not called often and the maintainability is greatly increased
# The format is always nem_{mobname here}
# The mobname is cut after the 16 character limit is reached

# In addition to these scorboards, there is also a tag "nemesis" and "nem_uninstall"

# just in case
advancement revoke @s from nemesis:root;
