#!/bin/bash
# Authors : shuhui wu
# Date: 9/20/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter a file name: "
read FileName

echo "Enter regular expression: "
read RegularExpression
#(4.2) use grep to to search the given file
grep $RegularExpression $FileName

#(4.3) grep to output the number of phone number
phoneNum=`grep -Eo '[0-9]{3}-[0-9]{3}-[0-9]{4}' regex_practice.txt`
echo "phone number: $phoneNum"

#(4.4-1) get total number of email 
emailNum=`grep -c -Eo '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,6}' $FileName`
echo "Email count: \n$emailNum\n"
echo "Result has been save to file regex_practice.txt\n"
echo $emailNum$'\n' >> ./regex_practice.txt

#(4.4-2) find out the match part of phone numbers
PhoneNum=`grep -Eo '303-[0-9-]{1,}' $FileName`
echo "Phone number with 303 area code: \n$PhoneNum\n"

#(4.4-3) store email from geocities.com to a new file
echo "Number of email address in the file of $FileName is:"
grep -c "@" $FileName

grep -Eo "303-[0-9]{3}-[0-9]{4}" $FileName
grep "geocities.com" $FileName >> ./email_results.txt
