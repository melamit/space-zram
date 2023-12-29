#
#	Thanks to @d1fakt & @DESIRE_TM
#   for original code. And Magisk
#	Module Template for snippets
#

SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true
print_modname() {
ui_print "                   "
ui_print " Space ZRAM Module "
ui_print " By @melamit       "
ui_print " From #teamvoid    "
ui_print "                   "
}
set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm $MODPATH/service.sh 0 0 0777
}