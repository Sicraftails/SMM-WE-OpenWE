function has_internet() {
	if (!string_count(".", string(network_resolve("www.google.com"))))
	    return 0;
	else
	    return 1;


}
