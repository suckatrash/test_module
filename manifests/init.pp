class test_module {
  file { '/tmp/test1':
    ensure => 'file',
    source => 'puppet:///modules/test_module/test',
  }

  file { '/tmp/test-sym':
    ensure => 'file',
    source => 'puppet:///modules/test_module/testsym',
  }

  file { '/tmp/test-through-dir':
    ensure => 'file',
    source => 'puppet:///modules/test_module/testsymdir/test2',
  }
}
