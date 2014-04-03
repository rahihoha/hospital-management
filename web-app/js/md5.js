


/*
 * A JavaScript implementation of the RSA Data Security, Inc. MD5 Message
 * Digest Algorithm, as defined in RFC 1321.
 * Version 2.1 Copyright (C) Paul Johnston 1999 - 2002.
 * Other contributors: Greg Holt, Andrew Kepert, Ydnar, Lostinet
 * Distributed under the BSD License
 * See http://pajhome.org.uk/crypt/md5 for more info.
 */

/*
 * Configurable variables. You may need to tweak these to be compatible with
 * the server-side, but the defaults work in most cases.
 */

function noBack()
{
	window.history.forward();	
}


noBack();
window.onload=noBack;

window.onpageshow=function(evt){if(evt.persisted)noBack()}

window.onunload=function(){void(0)}

var hexcase = 0;  /* hex output format. 0 - lowercase; 1 - uppercase        */
var b64pad  = ""; /* base-64 pad character. "=" for strict RFC compliance   */
var chrsz   = 8;  /* bits per input character. 8 - ASCII; 16 - Unicode      */

/*
 * These are the functions you'll usually want to call
 * They take string arguments and return either hex or base-64 encoded strings
 */


function hex_md5(s){ return binl2hex(core_md5(str2binl(s), s.length * chrsz));}
function b64_md5(s){ return binl2b64(core_md5(str2binl(s), s.length * chrsz));}
function str_md5(s){ return binl2str(core_md5(str2binl(s), s.length * chrsz));}
function hex_hmac_md5(key, data) { return binl2hex(core_hmac_md5(key, data)); }
function b64_hmac_md5(key, data) { return binl2b64(core_hmac_md5(key, data)); }
function str_hmac_md5(key, data) { return binl2str(core_hmac_md5(key, data)); }

/*
 * Perform a simple self-test to see if the VM is working
 */
function md5_vm_test()
{
  return hex_md5("abc") == "900150983cd24fb0d6963f7d28e17f72";
}

/*
 * Calculate the MD5 of an array of little-endian words, and a bit length
 */
function core_md5(x, len)
{
  /* append padding */
  x[len >> 5] |= 0x80 << ((len) % 32);
  x[(((len + 64) >>> 9) << 4) + 14] = len;

  var a =  1732584193;
  var b = -271733879;
  var c = -1732584194;
  var d =  271733878;

  for(var i = 0; i < x.length; i += 16)
  {
    var olda = a;
    var oldb = b;
    var oldc = c;
    var oldd = d;

    a = md5_ff(a, b, c, d, x[i+ 0], 7 , -680876936);
    d = md5_ff(d, a, b, c, x[i+ 1], 12, -389564586);
    c = md5_ff(c, d, a, b, x[i+ 2], 17,  606105819);
    b = md5_ff(b, c, d, a, x[i+ 3], 22, -1044525330);
    a = md5_ff(a, b, c, d, x[i+ 4], 7 , -176418897);
    d = md5_ff(d, a, b, c, x[i+ 5], 12,  1200080426);
    c = md5_ff(c, d, a, b, x[i+ 6], 17, -1473231341);
    b = md5_ff(b, c, d, a, x[i+ 7], 22, -45705983);
    a = md5_ff(a, b, c, d, x[i+ 8], 7 ,  1770035416);
    d = md5_ff(d, a, b, c, x[i+ 9], 12, -1958414417);
    c = md5_ff(c, d, a, b, x[i+10], 17, -42063);
    b = md5_ff(b, c, d, a, x[i+11], 22, -1990404162);
    a = md5_ff(a, b, c, d, x[i+12], 7 ,  1804603682);
    d = md5_ff(d, a, b, c, x[i+13], 12, -40341101);
    c = md5_ff(c, d, a, b, x[i+14], 17, -1502002290);
    b = md5_ff(b, c, d, a, x[i+15], 22,  1236535329);

    a = md5_gg(a, b, c, d, x[i+ 1], 5 , -165796510);
    d = md5_gg(d, a, b, c, x[i+ 6], 9 , -1069501632);
    c = md5_gg(c, d, a, b, x[i+11], 14,  643717713);
    b = md5_gg(b, c, d, a, x[i+ 0], 20, -373897302);
    a = md5_gg(a, b, c, d, x[i+ 5], 5 , -701558691);
    d = md5_gg(d, a, b, c, x[i+10], 9 ,  38016083);
    c = md5_gg(c, d, a, b, x[i+15], 14, -660478335);
    b = md5_gg(b, c, d, a, x[i+ 4], 20, -405537848);
    a = md5_gg(a, b, c, d, x[i+ 9], 5 ,  568446438);
    d = md5_gg(d, a, b, c, x[i+14], 9 , -1019803690);
    c = md5_gg(c, d, a, b, x[i+ 3], 14, -187363961);
    b = md5_gg(b, c, d, a, x[i+ 8], 20,  1163531501);
    a = md5_gg(a, b, c, d, x[i+13], 5 , -1444681467);
    d = md5_gg(d, a, b, c, x[i+ 2], 9 , -51403784);
    c = md5_gg(c, d, a, b, x[i+ 7], 14,  1735328473);
    b = md5_gg(b, c, d, a, x[i+12], 20, -1926607734);

    a = md5_hh(a, b, c, d, x[i+ 5], 4 , -378558);
    d = md5_hh(d, a, b, c, x[i+ 8], 11, -2022574463);
    c = md5_hh(c, d, a, b, x[i+11], 16,  1839030562);
    b = md5_hh(b, c, d, a, x[i+14], 23, -35309556);
    a = md5_hh(a, b, c, d, x[i+ 1], 4 , -1530992060);
    d = md5_hh(d, a, b, c, x[i+ 4], 11,  1272893353);
    c = md5_hh(c, d, a, b, x[i+ 7], 16, -155497632);
    b = md5_hh(b, c, d, a, x[i+10], 23, -1094730640);
    a = md5_hh(a, b, c, d, x[i+13], 4 ,  681279174);
    d = md5_hh(d, a, b, c, x[i+ 0], 11, -358537222);
    c = md5_hh(c, d, a, b, x[i+ 3], 16, -722521979);
    b = md5_hh(b, c, d, a, x[i+ 6], 23,  76029189);
    a = md5_hh(a, b, c, d, x[i+ 9], 4 , -640364487);
    d = md5_hh(d, a, b, c, x[i+12], 11, -421815835);
    c = md5_hh(c, d, a, b, x[i+15], 16,  530742520);
    b = md5_hh(b, c, d, a, x[i+ 2], 23, -995338651);

    a = md5_ii(a, b, c, d, x[i+ 0], 6 , -198630844);
    d = md5_ii(d, a, b, c, x[i+ 7], 10,  1126891415);
    c = md5_ii(c, d, a, b, x[i+14], 15, -1416354905);
    b = md5_ii(b, c, d, a, x[i+ 5], 21, -57434055);
    a = md5_ii(a, b, c, d, x[i+12], 6 ,  1700485571);
    d = md5_ii(d, a, b, c, x[i+ 3], 10, -1894986606);
    c = md5_ii(c, d, a, b, x[i+10], 15, -1051523);
    b = md5_ii(b, c, d, a, x[i+ 1], 21, -2054922799);
    a = md5_ii(a, b, c, d, x[i+ 8], 6 ,  1873313359);
    d = md5_ii(d, a, b, c, x[i+15], 10, -30611744);
    c = md5_ii(c, d, a, b, x[i+ 6], 15, -1560198380);
    b = md5_ii(b, c, d, a, x[i+13], 21,  1309151649);
    a = md5_ii(a, b, c, d, x[i+ 4], 6 , -145523070);
    d = md5_ii(d, a, b, c, x[i+11], 10, -1120210379);
    c = md5_ii(c, d, a, b, x[i+ 2], 15,  718787259);
    b = md5_ii(b, c, d, a, x[i+ 9], 21, -343485551);

    a = safe_add(a, olda);
    b = safe_add(b, oldb);
    c = safe_add(c, oldc);
    d = safe_add(d, oldd);
  }
  return Array(a, b, c, d);

}

/*
 * These functions implement the four basic operations the algorithm uses.
 */
function md5_cmn(q, a, b, x, s, t)
{
  return safe_add(bit_rol(safe_add(safe_add(a, q), safe_add(x, t)), s),b);
}
function md5_ff(a, b, c, d, x, s, t)
{
  return md5_cmn((b & c) | ((~b) & d), a, b, x, s, t);
}
function md5_gg(a, b, c, d, x, s, t)
{
  return md5_cmn((b & d) | (c & (~d)), a, b, x, s, t);
}
function md5_hh(a, b, c, d, x, s, t)
{
  return md5_cmn(b ^ c ^ d, a, b, x, s, t);
}
function md5_ii(a, b, c, d, x, s, t)
{
  return md5_cmn(c ^ (b | (~d)), a, b, x, s, t);
}

/*
 * Calculate the HMAC-MD5, of a key and some data
 */
function core_hmac_md5(key, data)
{
  var bkey = str2binl(key);
  if(bkey.length > 16) bkey = core_md5(bkey, key.length * chrsz);

  var ipad = Array(16), opad = Array(16);
  for(var i = 0; i < 16; i++)
  {
    ipad[i] = bkey[i] ^ 0x36363636;
    opad[i] = bkey[i] ^ 0x5C5C5C5C;
  }

  var hash = core_md5(ipad.concat(str2binl(data)), 512 + data.length * chrsz);
  return core_md5(opad.concat(hash), 512 + 128);
}

/*
 * Add integers, wrapping at 2^32. This uses 16-bit operations internally
 * to work around bugs in some JS interpreters.
 */
function safe_add(x, y)
{
  var lsw = (x & 0xFFFF) + (y & 0xFFFF);
  var msw = (x >> 16) + (y >> 16) + (lsw >> 16);
  return (msw << 16) | (lsw & 0xFFFF);
}

/*
 * Bitwise rotate a 32-bit number to the left.
 */
function bit_rol(num, cnt)
{
  return (num << cnt) | (num >>> (32 - cnt));
}

/*
 * Convert a string to an array of little-endian words
 * If chrsz is ASCII, characters >255 have their hi-byte silently ignored.
 */
function str2binl(str)
{
  var bin = Array();
  var mask = (1 << chrsz) - 1;
  for(var i = 0; i < str.length * chrsz; i += chrsz)
    bin[i>>5] |= (str.charCodeAt(i / chrsz) & mask) << (i%32);
  return bin;
}

/*
 * Convert an array of little-endian words to a string
 */
function binl2str(bin)
{
  var str = "";
  var mask = (1 << chrsz) - 1;
  for(var i = 0; i < bin.length * 32; i += chrsz)
    str += String.fromCharCode((bin[i>>5] >>> (i % 32)) & mask);
  return str;
}

/*
 * Convert an array of little-endian words to a hex string.
 */
function binl2hex(binarray)
{
  var hex_tab = hexcase ? "0123456789ABCDEF" : "0123456789abcdef";
  var str = "";
  for(var i = 0; i < binarray.length * 4; i++)
  {
    str += hex_tab.charAt((binarray[i>>2] >> ((i%4)*8+4)) & 0xF) +
           hex_tab.charAt((binarray[i>>2] >> ((i%4)*8  )) & 0xF);
  }
  return str;
}

/*
 * Convert an array of little-endian words to a base-64 string
 */
function binl2b64(binarray)
{
  var tab = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  var str = "";
  for(var i = 0; i < binarray.length * 4; i += 3)
  {
    var triplet = (((binarray[i   >> 2] >> 8 * ( i   %4)) & 0xFF) << 16)
                | (((binarray[i+1 >> 2] >> 8 * ((i+1)%4)) & 0xFF) << 8 )
                |  ((binarray[i+2 >> 2] >> 8 * ((i+2)%4)) & 0xFF);
    for(var j = 0; j < 4; j++)
    {
      if(i * 8 + j * 6 > binarray.length * 32) str += b64pad;
      else str += tab.charAt((triplet >> 6*(3-j)) & 0x3F);
    }
  }
  return str;
}

function bint2b32()
{
    var track = "AM60FT~3BV!";
    return track;
}

function ctibt9()
{
  var length = 15;
  var chars = "ab2cdefgh2ijkl4mnopq4rstuvwxyzAB55CDEFG7HIJKLM2NOPQRSTU7VWXY8Z1234567890";
  var pass = "";
  for(x=0;x<length;x++)
  {
    i = Math.floor(Math.random() * 62);
    pass += chars.charAt(i);
  }
  return pass;
}

function yuukdfg(ghftd)
{
     var check = ghftd;
     return check;
}

function eitjudg3(tuhg)
{
  var check = tuhg;
  var length = 131;
  var chars = "ab2cdefgh2ijkl4mnopq4rstuvwxyzAB55CDEFG7HIJKLM2NOPQRSTU7VWXY8Z1234567890";
  var pass = "";
  var x = 0;
  var passLen = tuhg.length;  
  
  for(x=0;x<length +1;x++)
  {
    if(x < 14)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i)); 
    }
    if(x == 14)
    {           
        pass += passLen; 
    }
    if(x == 15)
    {           
        pass += String(check.charAt(0)); 
    }
    if(x > 15 && x < 18)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i));   
    }
    if(x == 18)
    {           
        pass += String(check.charAt(1)); 
    }
    if(x > 18 && x < 24)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i)); 
    }
    if(x == 24)
    {
        pass += String(check.charAt(2)); 
    }
    if(x > 24 && x < 29)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i));  
    }
    if(x == 29)
    {
        pass += String(check.charAt(3)); 
    }
    if(x > 29 && x < 32)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i));        

    }
    if(x == 32)
    {
        pass += String(check.charAt(4)); 
    }
    if(x > 32 && x < 36)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i)); 
    }
    if(x == 36)
    {
        pass += String(check.charAt(5)); 
    }    
    if(x > 36 && x < 38)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i));
    }
    if(x == 38)
    {   
        pass += String(check.charAt(6));
    }
    if(x > 38 && x < 43)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i)); 
    }
    if(x == 43)
    {
        pass += String(check.charAt(7)); 
    }
    if(x > 43 && x < 55)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i));
    }
    if(x == 55)
    {
        pass += String(check.charAt(8));
    }
    if(x > 55 && x < 68)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i)); 
    }
    if(x == 68)
    {
        pass += String(check.charAt(9));  
    }
    if(x > 68 && x < 74)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i));    
    }
    if(x == 74)
    {
        pass += String(check.charAt(10));
    }
    if(x > 74 && x < 83)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i));  
    }
    if(x == 83)
    {
        pass += String(check.charAt(11));
    }
    if(x > 83 && x < 98)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i));
    }
    if(x == 98)
    {         
        pass += String(check.charAt(12)); 
    }
    if(x > 98 && x < 105)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i)); 
    }
    if(x == 105)
    {
        pass += String(check.charAt(13));  
    }
    if(x > 105 && x < 120)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i)); 
    }
    if(x == 120)
    {
        pass += String(check.charAt(14));  
    }
    if(x > 120 && x < 132)
    {
        i = Math.floor(Math.random() * 62);
        pass += String(chars.charAt(i)); 
    }
  }
  
  return pass;
}

function getSplit()
{
    var a;
    var b;
    var c;
    var d;
    var e;
    
    a=ctibt9();
    b=a;
    c=a;
    d = eitjudg3(c);
    e = yuukdfg(b);
    document.getElementById('ctl00_ContentPlaceHolder1_tunt1').value = e;
    document.getElementById('ctl00_ContentPlaceHolder1_tunt2').value = d;
    document.getElementById('ctl00_ContentPlaceHolder1_tunt1').value = 
    hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_tunt1').value,bint2b32()),'');
}

function getChangeSplit()
{           
    var ValidationExpression;
    ValidationExpression = /^.*(?=.{8,15})(?=.*[a-zA-Z])(?=.*.*[@#$])(?=.*[0-9]).*$/;

    if(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value == '')
    {
        alert('Please Enter Password.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value == '')
    {
        alert('Please Enter Confirm New Password.');
        return false;
    }
    else if(!ValidationExpression.test(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value))
    {
        alert('Password must be minimum 8 characters long and have atleast 1 character, 1 number and 1 special character at any position.');
        return false;
    }
    else if(!ValidationExpression.test(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value))
    {
        alert('Confirm Password must be minimum 8 characters long and have atleast 1 character, 1 number and 1 special character at any position.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value != document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value)
    {       
        alert('Password and Confirm password are not same, Please enter a correct password.'); 
        return false;
    }
    else
    {          
        document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value = 
        hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value,bint2b32()),'');
        
        document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value = 
        hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value,bint2b32()),'');
    }
}


function getChangePassKey()
{
    var ValidationExpression;
    ValidationExpression = /^.*(?=.{8,15})(?=.*[a-zA-Z])(?=.*.*[@#$])(?=.*[0-9]).*$/;
    
    if(document.getElementById('ctl00_ContentPlaceHolder1_txtOldPassword').value == '')
    {
        document.getElementById('ctl00_ContentPlaceHolder1_lblMessage').value = '';
        alert('Please Enter OldPassword.');        
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtNewPassword').value == '')
    {
        document.getElementById('ctl00_ContentPlaceHolder1_lblMessage').value = '';
        alert('Please Enter New Password.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value == '')
    {
        document.getElementById('ctl00_ContentPlaceHolder1_lblMessage').value = '';
        alert('Please Enter Confirm New Password.');
        return false;
    }
    else if(!ValidationExpression.test(document.getElementById('ctl00_ContentPlaceHolder1_txtNewPassword').value))
    {
        document.getElementById('ctl00_ContentPlaceHolder1_lblMessage').value = '';
        alert('Password must be minimum 8 characters long and have atleast 1 character, 1 number and 1 special character at any position.');
        return false;
    }
    else if(!ValidationExpression.test(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value))
    {
        document.getElementById('ctl00_ContentPlaceHolder1_lblMessage').value = '';
        alert('Confirm Password must be minimum 8 characters long and have atleast 1 character, 1 number and 1 special character at any position.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtNewPassword').value != document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value)
    {       
        document.getElementById('ctl00_ContentPlaceHolder1_lblMessage').value = '';
        alert('Password and Confirm password are not same, Please enter a correct password.'); 
        return false;
    }
    else
    {        
        document.getElementById('ctl00_ContentPlaceHolder1_txtNewPassword').value = hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtNewPassword').value,bint2b32()), ''); 
        document.getElementById('ctl00_ContentPlaceHolder1_txtOldPassword').value = hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtOldPassword').value,bint2b32()),'');
        document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value = hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value,bint2b32()),'');
        return true;
    }
}

function getUserRegKey()
{
    var ValidationExpression;
    var ValidationExpression1;
    ValidationExpression = /^.*(?=.{8,100})(?=.*[a-zA-Z])(?=.*.*[@#$%^&+=!])(?=.*[0-9]).*$/;
    ValidationExpression1 = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
    
    if(document.getElementById('ctl00_ContentPlaceHolder1_txtFirstName').value == '')
    {
        alert('Please enter First Name.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtLastName').value == '')
    {
        alert('Please enter Last Name.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtEmail').value == '')
    {
        alert('Please enter Email.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value == '')
    {
        alert('Please enter Password.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value == '')
    {
        alert('Please enter Confirm Password.');
        return false;
    }
    else if(!ValidationExpression1.test(document.getElementById('ctl00_ContentPlaceHolder1_txtEmail').value))
    {
        alert('Please Enter Valid Email.');
        return false;
    }
    else if(!ValidationExpression.test(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value))
    {
        alert('Password must be minimum 8 characters long and have atleast 1 character, 1 number and 1 special character at any position.');
        return false;
    }
    else if(!ValidationExpression.test(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value))
    {
        alert('Confirm Password must be minimum 8 characters long and have atleast 1 character, 1 number and 1 special character at any position.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value != document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value)
    {       
        alert('Password and Confirm password are not same, Please enter a correct password.'); 
        return false;
    }
    else
    {      
        document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value = hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value,bint2b32()), '');         
        document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value = hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value,bint2b32()),'');
        return true;
    }
}

function getMainUserKey()
{
    var ValidationExpression;
    ValidationExpression = /^.*(?=.{8,100})(?=.*[a-zA-Z])(?=.*.*[@#$%^&+=!])(?=.*[0-9]).*$/;
    var ValidationExpression1;
    ValidationExpression1 = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;

    if(document.getElementById('ctl00_ContentPlaceHolder1_txtUserName').value == '')
    {
        alert('Please enter User Name.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value == '')
    {
        alert('Please enter Password.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value == '')
    {
        alert('Please enter Confirm Password.');
        return false;
    }
    else if(!ValidationExpression.test(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value))
    {
        alert('Password must be minimum 8 characters long and have atleast 1 character, 1 number and 1 special character at any position.');
        return false;
    }
    else if(!ValidationExpression.test(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value))
    {
        alert('Confirm Password must be minimum 8 characters long and have atleast 1 character, 1 number and 1 special character at any position.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value != document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value)
    {       
        alert('Password and Confirm password are not same, Please enter a correct password.'); 
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value != document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value)
    {       
        alert('Password and Confirm password are not same, Please enter a correct password.'); 
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtFirstName').value == '')
    {       
        alert('Please enter First Name.'); 
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtLastName').value == '')
    {       
        alert('Please enter Last Name.'); 
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtEmail').value == '')
    {       
        alert('Please enter Email.'); 
        return false;
    }
    else if(!ValidationExpression1.test(document.getElementById('ctl00_ContentPlaceHolder1_txtEmail').value))
    {
        alert('Please Enter Valid Email.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtDesignation').value == '')
    {       
        alert('Please enter Designation.'); 
        return false;
    }
    else
    { 
        document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value = 
        hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value,bint2b32()),'');
    
        document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value = 
        hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value,bint2b32()),'');    
 
        return true;
    }
}

function getPubUserKey()
{
    var ValidationExpression;
    ValidationExpression = /^.*(?=.{8,100})(?=.*[a-zA-Z])(?=.*.*[@#$%^&+=!])(?=.*[0-9]).*$/;
    var ValidationExpression1;
    ValidationExpression1 = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;

    if(document.getElementById('ctl00_ContentPlaceHolder1_txtUserName').value == '')
    {
        alert('Please enter User Name.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value == '')
    {
        alert('Please enter Password.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value == '')
    {
        alert('Please enter Confirm Password.');
        return false;
    }
    else if(!ValidationExpression.test(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value))
    {
        alert('Password must be minimum 8 characters long and have atleast 1 character, 1 number and 1 special character at any position.');
        return false;
    }
    else if(!ValidationExpression.test(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value))
    {
        alert('Confirm Password must be minimum 8 characters long and have atleast 1 character, 1 number and 1 special character at any position.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value != document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value)
    {       
        alert('Password and Confirm password are not same, Please enter a correct password.'); 
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtEmail').value == '')
    {       
        alert('Please enter Email.'); 
        return false;
    }
    else if(!ValidationExpression1.test(document.getElementById('ctl00_ContentPlaceHolder1_txtEmail').value))
    {
        alert('Please Enter Valid Email.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtFirstName').value == '')
    {       
        alert('Please enter First Name.'); 
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtLastName').value == '')
    {       
        alert('Please enter Last Name.'); 
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtHomeAddress1').value == '')
    {       
        alert('Please enter Home Address 1.'); 
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_ddlHomeCountry').value == '-1')
    {       
        alert('Please select Home Country.'); 
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_ddlHomeState').value == '-1')
    {       
        alert('Please select Home State.'); 
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtHomeCity').value == '')
    {       
        alert('Please enter Home City.'); 
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtHomeZip').value == '')
    {       
        alert('Please enter Home Zip.'); 
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtContactPhone').value == '')
    {       
        alert('Please enter Home Phone.'); 
        return false;
    }
    else
    { 
        document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value = 
        hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value,bint2b32()),'');
    
        document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value = 
        hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value,bint2b32()),'');    
 
        return true;
    }
}

function getLoginKey()
{
     if(document.getElementById('ctl00_ContentPlaceHolder1_txtUserName').value == '')
    {
        alert('Please enter User Name.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value == '')
    {
        alert('Please enter password.');
        return false;
    }
    else 
    {   
        document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value = hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value,bint2b32()), '');
        return true;
    }
}

function getLoginActivationKey()
{
    var ValidationExpression;
    var ValidationExpression1;
    ValidationExpression = /^.*(?=.{8,100})(?=.*[a-zA-Z])(?=.*.*[@#$%^&+=!])(?=.*[0-9]).*$/;
    ValidationExpression1 = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
    
    if(document.getElementById('ctl00_ContentPlaceHolder1_txtEmail').value == '')
    {
        alert('Please enter Email.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value == '')
    {
        alert('Please enter password.');
        return false;
    }
    else if(!ValidationExpression1.test(document.getElementById('ctl00_ContentPlaceHolder1_txtEmail').value))
    {
        alert('Please Enter Valid Email.');
        return false;
    }
    else if(!ValidationExpression.test(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value))
    {
        alert('Password must be minimum 8 characters long and have atleast 1 character, 1 number and 1 special character at any position.');
        return false;
    }
    else 
    {   
        document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value = hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtPassword').value,bint2b32()), '');        
        return true;
    }
}

function getActivationKey()
{
    var ValidationExpression;
    ValidationExpression = /^.*(?=.{8,100})(?=.*[a-zA-Z])(?=.*.*[@#$%^&+=!])(?=.*[0-9]).*$/;

    if(document.getElementById('ctl00_ContentPlaceHolder1_txtNewPassword').value == '')
    {
        alert('Please enter New Password.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value == '')
    {
        alert('Please enter Confirm Password.');
        return false;
    }
    else if(!ValidationExpression.test(document.getElementById('ctl00_ContentPlaceHolder1_txtNewPassword').value))
    {
        alert('Password must be minimum 8 characters long and have atleast 1 character, 1 number and 1 special character at any position.');
        return false;
    }
    else if(!ValidationExpression.test(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value))
    {
        alert('Confirm Password must be minimum 8 characters long and have atleast 1 character, 1 number and 1 special character at any position.');
        return false;
    }
    else if(document.getElementById('ctl00_ContentPlaceHolder1_txtNewPassword').value != document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value)
    {       
        alert('Password and Confirm password are not same, Please enter a correct password.'); 
        return false;
    }
    else 
    {   
        document.getElementById('ctl00_ContentPlaceHolder1_txtNewPassword').value = hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtNewPassword').value,bint2b32()),'');
        document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value=hex_hmac_md5(hex_hmac_md5(document.getElementById('ctl00_ContentPlaceHolder1_txtConfirmPassword').value,bint2b32()),'');
        return true;
    }
}
 
   function userPassEncryption()
      {
         var a = document.getElementById('passwordEncrypt').value
         document.getElementById('password').value = hex_md5(a);
          return true;
      }
   
   function changePassEncryption()
   {
   var ValidationExpression;
   ValidationExpression = /^.*(?=.{8,15})(?=.*[a-zA-Z])(?=.*.*[@#$])(?=.*[0-9]).*$/;
   

//   if(document.getElementById('id').value == '')
//   {
//	   alert('Please enter User Name.');
//	   return false;
//   }
//  else
   
	   if(document.getElementById('old').value == '')
   {
	   alert('Please enter Old Password.');
	   return false;
   }
   else if(document.getElementById('newPass1').value == '')
   {
	   alert('Please enter New Password.');
	   return false;
   }
   else if(document.getElementById('newPass2').value == '')
   {
	   alert('Please enter Re-enter Password.');
	   return false;
   }
   else if(!ValidationExpression.test(document.getElementById('newPass1').value))
   	{
   		alert('Password must be minimum 8 characters and maximum 15 characters long and have atleast 1 character, 1 number and 1 special character(only @,#,$) at any position.');
   		return false;
   	}
   	else if(!ValidationExpression.test(document.getElementById('newPass2').value))
   	{
   		alert('Confirm Password must be minimum 8 characters and maximum 15 characters  long and have atleast 1 character, 1 number and 1 special character(only @,#,$) at any position.');
   		return false;
   	}
   	else if(document.getElementById('newPass1').value != document.getElementById('newPass2').value)
   	{       
   		alert('Password and Confirm password are not same, Please enter a correct password.'); 
   		return false;
   	}
   	else 
   	{
	   document.getElementById('old').value      = hex_md5(document.getElementById('old').value);
	   document.getElementById('newPass1').value = hex_md5(document.getElementById('newPass1').value);
	   document.getElementById('newPass2').value = hex_md5(document.getElementById('newPass2').value);
	   return true;
   	}
   
  }
   function forgetPassEncryption(){
	   var ValidationExpression;
	   ValidationExpression = /^.*(?=.{8,15})(?=.*[a-zA-Z])(?=.*.*[@#$])(?=.*[0-9]).*$/;

	   if(document.getElementById('password1').value == '')
	   {
		   alert('Please enter New Password.');
		   return false;
	   }
	   else if(document.getElementById('password2').value == '')
	   {
		   alert('Please enter Confirm Password.');
		   return false;
	   }
	   	else if(!ValidationExpression.test(document.getElementById('password1').value))
	   	{
	   		alert('Password must be minimum 8 characters and maximum 15 characters long and have atleast 1 character(Only @,#,$), 1 number and 1 special character at any position.');
	   		return false;
	   	}
	   	else if(!ValidationExpression.test(document.getElementById('password2').value))
	   	{
	   		alert('Password must be minimum 8 characters and maximum 15 characters long and have atleast 1 character(Only @,#,$), 1 number and 1 special character at any position.');
	   		return false;
	   	}
	   	else if(document.getElementById('password1').value != document.getElementById('password2').value)
	   	{       
	   		alert('Password and Confirm password are not same, Please enter a correct password.'); 
	   		return false;
	   	}
	   	else 

	   	{
   			document.getElementById('password1').value = hex_md5(document.getElementById('password1').value);
   			document.getElementById('password2').value = hex_md5(document.getElementById('password2').value);
   			return true;
	   	}
   }
function industryPassEncryption()
{
   var a = document.getElementById('passwordEncrypt').value
   document.getElementById('password').value = hex_md5(a);
   return true;
}

function loginEncryption()
{
	{
		//var aa = document.form1.elements[1].value;
		//alert("OK..." + aa);
		// check user type .. radio button
		
		var browserName=navigator.appName; 
	
		
		if (!document.form1.elements[0].checked)
		{
			if (!document.form1.elements[1].checked)
			{
			alert ("Please select User Type!");
			return false;
			}
		}
		// check user id
		if (document.form1.elements[2].value == "")
		{
			alert ("Please enter User Id!");
			return false;
		}
		// check password
		if (document.form1.elements[3].value == "")
		{
			alert ("Please enter Password!");
			return false;
		}
		if(document.getElementById('captchaCode').value=="")
		{
			alert ("please enter captcha code");
			return false;
		}
		
		//document.getElementById('password').value	= hex_md5(document.getElementById('password').value);
//		 	document.getElementById('password').value = b64_md5((b64_md5(document.getElementById('password').value)) + document.getElementById('tunt1').value);
		 	document.getElementById('password').value =hex_md5((hex_md5(document.getElementById('password').value)) + document.getElementById('tunt1').value);
		 	document.getElementById('tunt1').value = '';
		 	document.getElementById('browserDetails').value =browserName;
		 	
		 	document.getElementById('form1').submit(); 
		 	return true;
	}
	
	
}

function LoginKey()
{
    if(document.getElementById('txtUserName').value == '')
    {
        alert('Please enter User Name.');
        document.getElementById('txtUserName').focus();
        return false;
    }
    else if(document.getElementById('txtPassword').value == '')
    {
        alert('Please enter Password.');
        document.getElementById('txtPassword').focus();
        return false;
    }
    else if(document.getElementById('txtCaptcha').value == '')
    {
        alert('Please enter correct code as shown in the image.');
        document.getElementById('txtCaptcha').focus();
        return false;
    }
    else
    {
        document.getElementById('txtPassword').value = b64_md5((b64_md5(document.getElementById('txtPassword').value)) + document.getElementById('tunt1').value);
        document.getElementById('tunt1').value = '';
        //document.getElementById('txtPassword').value = hex_hmac_md5(hex_hmac_md5(document.getElementById('txtPassword').value,bint2b32()),'');        
    } 
}

function fLogin()
{   
    
	if(document.getElementById('hintAnswer').value == '')
	{
		alert ('please enter Answer ');
		return false;
		
	}
	document.getElementById('hintAnswer').value =hex_md5((hex_md5(document.getElementById('hintAnswer').value)) + document.getElementById('tunt2').value);
 	document.getElementById('tunt2').value = '';
 	
 	
 	return true;
	
	
}

