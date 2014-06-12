for i in `seq 401 1600`;

do

    echo $i

    mysql --user=root --password=root openfire << EOF

    insert into ofUser (username,plainPassword,creationDate,modificationDate) VALUES ("$i","root",0,0);

EOF

done

