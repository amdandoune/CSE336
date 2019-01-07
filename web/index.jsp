<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en" class="dj_webkit dj_chrome dj_contentbox">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>developerWorks registration</title>
  <link href="resources/www.css" rel="stylesheet" title="www" type="text/css">
  <link href="resources/dw-mf.css" rel="stylesheet" title="www" type="text/css">
  <link href="resources/dw-mf-minimal-N.css" rel="stylesheet" title="www" type="text/css">
  <link href="resources/dwwi-v17.css" rel="stylesheet" title="www" type="text/css">
</head>
<body>
<div id="ibm-top" class="ibm-landing-page ibm-no-scroll">
  <img src="resources/ibm_logo_print.png" width="43" height="15" id="ibm-print-masthead" alt="IBM Print">
  <!-- MASTHEAD_BEGIN -->
  <div id="ibm-masthead" role="banner">
    <div id="dw-masthead-top-row">
      <ul id="ibm-mast-options-dw" role="toolbar">
        <li role="presentation" id="dw-mast-top-4">
          <a href="http://www.ibm.com/developerworks/"><img src="resources/dwn-dw-badge.png" width="43" height="22" alt="dW" aria-label="dW"></a>
        </li>
        <li role="presentation" id="dw-mast-top-3">
          <a href="http://www.ibm.com/">IBM</a>
        </li>
      </ul>
    </div>
    <div id="ibm-universal-nav-dw" aria-label="Site map">
      <ul id="ibm-unav-links-dw">
        <li id="ibm-unav-home-dwlogo">
          <a href="http://www.ibm.com/developerworks/"><img src="resources/dwn-dw-wordmark.png" width="225" height="28" alt="developerWorks®"></a>
        </li>
      </ul>
    </div>
  </div>
  <div id="fdiv" class="ibm-access"></div>
  <!-- MASTHEAD_END -->
  <div id="ibm-leadspace-body">
    <h1 class="ibm-small">developerWorks registration</h1>
  </div>
  <p>Thank you for registering with IBM developerWorks. To simplify things, you can use the IBM ID and password that you designate below across IBM.</p>
  <p>Asterisks (<span class="ibm-required">*</span>) indicate fields required to complete this transaction.</p>

    <%--@elvariable id="IBMForm" type="com.marvinyan.ontrack.FormBean"--%>
    <form action="${pageContext.request.contextPath}/submitvalidator" class="ibm-row-form" id="registerform" method="get" name="register">
    <h2 class="ibm-inner-subhead">Basic registration information</h2>
    <div class="ibm-columns">
      <div class="ibm-col-2-1">
        <p>
          <label for="FName">First name:<span class="ibm-required">*</span></label>
          <span><input name="FName" id="FName" size="36" type="text" value="${IBMForm.firstName}" aria-required="true" onblur="ajaxValidate(this.getAttribute('id'));"></span>
          <span class="dw-lc-formerror" id="FName_invalid"></span>
        </p>
      </div>
      <div class="ibm-col-2-1">
        <p>
          <label for="LName">Last name:<span class="ibm-required">*</span></label>
          <span><input name="LName" id="LName" size="36" type="text" value="${IBMForm.lastName}" aria-required="true" onblur="ajaxValidate(this.getAttribute('id'));"></span>
          <span class="dw-lc-formerror" id="LName_invalid"></span>
        </p>
      </div>
    </div>
    <p>
      <label for="emailAddress">Email address:<span class="ibm-required">*</span><br>
        <span class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(This will also be your IBM ID for signing in)</span></label>
      <span><input name="UserID" id="emailAddress" size="42" type="text" value="${IBMForm.email}" onblur="ajaxValidate(this.getAttribute('id'));" aria-required="true"></span>
      <span class="dw-lc-formerror" id="emailAddress_invalid"></span>
    </p>
    <p>
      <label for="Password">Password:<span class="ibm-required">*</span><br> <span class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(Must be at least 8 characters)</span></label>
      <span><input name="Password" id="Password" size="42" type="password" value="${IBMForm.password}" onblur="ajaxValidate(this.getAttribute('id'));"></span>
      <span class="dw-lc-formerror" id="Password_invalid"></span>
    </p>
    <p>
      <label for="RePassword">Verify password:<span class="ibm-required">*</span></label>
      <span><input name="RePassword" id="RePassword" size="42" type="password" value="${IBMForm.verifyPassword}" onblur="ajaxValidate(this.getAttribute('id'));"></span>
      <span class="dw-lc-formerror" id="RePassword_invalid"></span>
    </p>
    <p>
      <label for="alias">Display name:<span class="ibm-required">*</span><br>
        <span class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(Must be between 3 - 31 characters.</span>
      </label>
      <span><input name="alias" id="alias" size="42" type="text" value="${IBMForm.displayName}" onblur="ajaxValidate(this.getAttribute('id'));" aria-required="true"></span>
      <span class="dw-lc-formerror" id="alias_invalid"></span>
    </p>
    <p>
      <label for="countryResidence">Country/region of residence:<span class="ibm-required">*</span><br>
        <span class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(Required for warranty)</span></label>
      <span>
        <select name="CountryOfRes" id="countryResidence" onblur="ajaxValidate(this.getAttribute('id'));">
            <option value=""   ${IBMForm.country == "" ? "selected='selected'" : ""}>Select one</option>
            <option value="US" ${IBMForm.country == "US" ? "selected='selected'" : ""}>United States</option>
            <option value="HK" ${IBMForm.country == "HK" ? "selected='selected'" : ""}>Hong Kong</option>
            <option value="JP" ${IBMForm.country == "JP" ? "selected='selected'" : ""}>Japan</option>
            <option value="MY" ${IBMForm.country == "MY" ? "selected='selected'" : ""}>Malaysia</option>
            <option value="SG" ${IBMForm.country == "SG" ? "selected='selected'" : ""}>Singapore</option>
        </select>
      </span>
      <span class="dw-lc-formerror" id="countryResidence_invalid"></span>
    </p>
    <div class="ibm-columns">
      <div class="ibm-col-2-1">
        <p>
          <label for="City">City:</label>
          <span><input name="City" id="City" size="36" type="text" value="${IBMForm.city}"></span>
        </p>
      </div>
      <div class="ibm-col-2-1">
        <p>
          <label for="Language">Language:<span class="ibm-required">*</span></label>
          <span>
            <select name="Language" id="Language" onblur="ajaxValidate(this.getAttribute('id'));">
                <option value=""      ${IBMForm.language == "" ? "selected='selected'" : ""}>Select one</option>
                <option value="en-US" ${IBMForm.language == "en-US" ? "selected='selected'" : ""}>English</option>
                <option value="fi-FI" ${IBMForm.language == "fi-FI" ? "selected='selected'" : ""}>Finnish</option>
                <option value="ja-JP" ${IBMForm.language == "ja-JP" ? "selected='selected'" : ""}>Japanese</option>
                <option value="ms-MY" ${IBMForm.language == "ms-MY" ? "selected='selected'" : ""}>Malay</option>
                <option value="zh-TW" ${IBMForm.language == "zh-TW" ? "selected='selected'" : ""}>Traditional Chinese</option>
            </select>
          </span>
          <span class="dw-lc-formerror" id="Language_invalid"></span>
        </p>
      </div>
    </div>
    <p>Please select a security question that only you can answer or create your own. Then enter the answer to the question. Occasionally, you may be asked to answer this question to confirm your identity.</p>
    <div class="ibm-columns">
      <div class="ibm-col-2-1">
        <p>
          <label for="SecurityQues">Security question:<span class="ibm-required">*</span></label>
          <span>
            <select name="SecurityQues" id="SecurityQues" onblur="ajaxValidate(this.getAttribute('id'));">
                <option ${IBMForm.securityQuestion == "" ? "selected='selected'" : ""} value="">Select one</option>
                <option value="name"    ${IBMForm.securityQuestion == "name" ? "selected='selected'" : ""}>What is your mother's maiden name?</option>
                <option value="pet"     ${IBMForm.securityQuestion == "pet" ? "selected='selected'" : ""}>What is the name of your first pet?</option>
                <option value="school"  ${IBMForm.securityQuestion == "school" ? "selected='selected'" : ""}>What was the name of your first school?</option>
                <option value="job"     ${IBMForm.securityQuestion == "job" ? "selected='selected'" : ""}>In what city or town was your first job?</option>
                <option value="country" ${IBMForm.securityQuestion == "country" ? "selected='selected'" : ""}>In what country were you born?</option>
            </select>
          </span>
          <span class="dw-lc-formerror" id="SecurityQues_invalid"></span>
        </p>
      </div>
    </div>
    <label for="SecurityAns">Answer to security question:<span class="ibm-required">*</span></label>
    <span><input name="SecurityAns" id="SecurityAns" size="42" type="text" value="${IBMForm.securityAnswer}" aria-required="true" onblur="ajaxValidate(this.getAttribute('id'));"></span>
    <span class="dw-lc-formerror" id="SecurityAns_invalid"></span>

    <div class="ibm-buttons-row">
      <p>
        <input type="button" id="fieldCount" onclick="countFields()" value="Count Fields">
        <input class="ibm-btn-arrow-pri" id="ibm-submit" name="ibm-submit" type="submit" value="Register">
        <input class="ibm-btn-cancel-sec" name="ibm-cancel" type="button" value="Cancel"></p>
    </div>

    <p id="numInputs">The number of input elements is </p>
    <p id="numPasswords">The number of input elements of type password is </p>
  </form>
</div>
</body>

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
    function countFields() {
        var inputs = document.getElementsByTagName('input');
        var numInputs = inputs.length;
        var numInputsP = document.getElementById("numInputs");
        var numPasswordsP = document.getElementById("numPasswords");
        var numPasswords = 0;

        if(numInputsP.childNodes[1] != null) {
            numInputsP.removeChild(numInputsP.childNodes[1]);
            numPasswordsP.removeChild(numPasswordsP.childNodes[1]);
        }

        for (var i = 0; i < numInputs; i++) {
            if (inputs[i].type == "password")
                numPasswords++;
        }

        var t1 = document.createTextNode(numInputs);
        var t2 = document.createTextNode(numPasswords);
        numInputsP.appendChild(t1);
        numPasswordsP.appendChild(t2);

        alert("the number of input tags is " + numInputs);
        alert("the number of password fields is " + numPasswords)
    }

    function ajaxValidate(fieldId) {
        var inputField = $("#" + fieldId);
        var errorMessage = $("#" + fieldId + "_invalid");
        var url = "http://localhost:8080/Assignment8/ajaxvalidator?" + fieldId + "=" + inputField.val();

        errorMessage.load(url, function(response) {
            if (response.trim() === "&#x2713;") {
                $(this).css("color", "green"); // "this" refers to errorMessage
            } else {
                $(this).css("color", "red");
            }
            focusFirstError();
        });
    }

    function focusFirstError() {
        var errors = $(".dw-lc-formerror").filter(function() {
            return this.style.color === "red";
        });
        if (errors !== undefined && errors[0] !== undefined) {
            var firstError = errors[0];
            $("#" + firstError.id.slice(0, -8)).focus();
        }
    }
</script>

</html>
