cmd('Rails', function()
  cmd('Rc', function() c.term('rails console') end, {})
  cmd('Rs', function() c.term('rails server') end, {})
end, {})
