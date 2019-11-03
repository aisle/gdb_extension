set print thread-events off
set auto-load safe-path /

python
import sys
sys.path.insert(0, '/home/admin/gdb_extension')
from printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end
