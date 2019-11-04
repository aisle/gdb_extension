set print thread-events off
set pagination off
set auto-load safe-path /

define pac
  if $argc != 1
    help pac
  else
    print $arg0
    continue
  end
end

document pac
Print And Continue
usage: pac <var>
end

python
import sys
sys.path.insert(0, '/home/admin/gdb_extension')
from printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end
