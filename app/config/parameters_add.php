<?php

// т.к. непонятно как написать эту строчку в yml формате
$container->setParameter('memcached.dsn', "memcached://" . $container->getParameter('memcache_servers')['0']['0'] . ":" . $container->getParameter('memcache_servers')['0']['1']);