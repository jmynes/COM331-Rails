# Chapter 4 example 2

# Rails uses symbols to identify things.
# These are used as keys when naming method parameters and looking things
# up in hashes

# Symbols look like :action, :line_items, :id, etc

redirect_to :action => "edit", :id => params[:id]