# put libaio.so.1 and libnuma.so.1 to ${MY_BASEDIR_VERSION}/lib/

# modify mysqld_safe

# Add libaio to ld_preload
for libaio in "${MY_BASEDIR_VERSION}/lib/"; do
  if [ -r "$libaio/libaio.so.1" ]; then
    add_mysqld_ld_preload "$libaio/libaio.so.1"
    break
  fi
done

# Add libnuma to ld_preload
for libnuma in "${MY_BASEDIR_VERSION}/lib/"; do
  if [ -r "$libnuma/libnuma.so.1" ]; then
    add_mysqld_ld_preload "$libnuma/libnuma.so.1"
    break
  fi
done

# load_jemalloc
