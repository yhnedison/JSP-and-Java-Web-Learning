function isValidate(form) {
	userid = form.userid.value;
	userpass = form.userpass.value;
	userpass2 = form.userpass2.value;
	email = form.email.value;

	// check userID length
	if (!minLength(userid, 6)) {
		alert("ID length smaller than 6")
		form.userid.focus();
		return false;
	}
	if (!maxLength(userid, 8)) {
		alert("ID length larger than 8");
		form.userid.focus();
		return false;
	}

	// check password length
	if (!minLength(userpass, 6)) {
		alert("password length smaller than 6");
		form.userpass.focus();
		return false;
	}
	if (!maxLength(userpass, 8)) {
		alert("password length larger than 8");
		form.userpass.focus();
		return false;
	}

	// check id password same
	if (userid == userpass) {
		alert("user ID and password cannot be the same");
		form.userpass.focus();
		return false;
	}
	// check pass1 and pass2
	if (userpass != userpass2) {
		alert("two password should be the same");
		form.userpass2.focus();
		return false
	}
	if (!isEmail(email)) {
		alert("please make sure email has correct format");
		form.email.focus();
		return false;
	}
	return true;

}

function isValidate2(form) {
	// used for login validate
	userid = form.userid.value;
	userpass = form.userpass.value;

	// check userID length
	if (!minLength(userid, 6)) {
		alert("ID length smaller than 6")
		form.userid.focus();
		return false;
	}
	if (!maxLength(userid, 8)) {
		alert("ID length larger than 8");
		form.userid.focus();
		return false;
	}

	// check password length
	if (!minLength(userpass, 6)) {
		alert("password length smaller than 6");
		form.userpass.focus();
		return false;
	}
	if (!maxLength(userpass, 8)) {
		alert("password length larger than 8");
		form.userpass.focus();
		return false;
	}

	// check id password same
	if (userid == userpass) {
		alert("user ID and password cannot be the same");
		form.userpass.focus();
		return false;
	}
	
	return true;

}

function isNull(str) {
	if (str.length == 0)
		return truel;
	else
		return false;
}

function minLength(str, length) {
	if (str.length >= length)
		return true;
	else
		return false;
}

function maxLength(str, length) {
	if (str.length <= length)
		return true;
	else
		return false;
}

function isEmail(email) {
	if (email.length == 0)
		reutrn
	false;
	index1 = email.indexoOf("@");
	index2 = email.indexOf(".");
	if (index1 < 1 || index2 < 1 || index2 - index1 <= 1
			| index2 + 1 == email.length)
		return false;
	else
		return true;
}