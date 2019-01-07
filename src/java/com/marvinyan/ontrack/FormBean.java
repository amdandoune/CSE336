package com.marvinyan.ontrack;

import java.io.Serializable;

/**
 * Created by marvinyan on 4/1/2017.
 */
public class FormBean implements Serializable {
    private static final String CHECKMARK = "&#x2713;";
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String verifyPassword;
    private String displayName;
    private String country;
    private String city;
    private String language;
    private String securityQuestion;
    private String securityAnswer;

    public boolean isEmpty(String val) {
        return (val == null || val.equals(""));
    }

    public String getFirstName() {
        return firstName;
    }

    public String setFirstName(String firstName) {
        if (isEmpty(firstName)) {
            this.firstName = null;
            return "Please enter your first name.";
        } else {
            this.firstName = firstName;
            return CHECKMARK;
        }
    }

    public String getLastName() {
        return lastName;
    }

    public String setLastName(String lastName) {
        if (isEmpty(lastName)) {
            this.lastName = null;
            return "Please enter your last name.";
        } else {
            this.lastName = lastName;
            return CHECKMARK;
        }
    }

    public String getEmail() {
        return email;
    }

    public String setEmail(String email) {
        if (isEmpty(email)) {
            this.email = null;
            return "Please enter your email address.";
        } else if (email.matches("\\S+@\\S+\\.\\S+")) {
            this.email = email;
            return CHECKMARK;
        } else {
            return "Please enter a valid email.";
        }
    }

    public String getPassword() {
        return password;
    }

    public String setPassword(String password) {
        if (isEmpty(password)) {
            this.password = null;
            return "Please enter your password.";
        } else if (password.length() < 8 || password.length() > 41) {
            this.password = null;
            return "Please enter a password between 8-41 characters.";
        } else {
            this.password = password;
            return CHECKMARK;
        }
    }

    public String getVerifyPassword() {
        return verifyPassword;
    }

    public String setVerifyPassword(String verifyPassword) {
        if (isEmpty(verifyPassword)) {
            this.verifyPassword = null;
            return "Please enter your password confirmation.";
        } else if (getPassword() == null || !verifyPassword.equals(getPassword())) {
            this.verifyPassword = null;
            return "Your passwords do not match.";
        } else {
            this.verifyPassword = verifyPassword;
            return CHECKMARK;
        }
    }

    public String getDisplayName() {
        return displayName;
    }

    public String setDisplayName(String displayName) {
        if (isEmpty(displayName)) {
            this.displayName = null;
            return "Please enter a display name.";
        } else if (displayName.length() < 3 || displayName.length() > 31) {
            this.displayName = null;
            return "Please enter a display name between 3-31 characters.";
        } else {
            this.displayName = displayName;
            return CHECKMARK;
        }
    }

    public String getCountry() {
        return country;
    }

    public String setCountry(String country) {
        if (isEmpty(country)) {
            this.country = null;
            return "Please select a country.";
        } else {
            this.country = country;
            return CHECKMARK;
        }
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getLanguage() {
        return language;
    }

    public String setLanguage(String language) {
        if (isEmpty(language)) {
            this.language = null;
            return "Please select a language.";
        } else {
            this.language = language;
            return CHECKMARK;
        }
    }

    public String getSecurityQuestion() {
        return securityQuestion;
    }

    public String setSecurityQuestion(String securityQuestion) {
        if (isEmpty(securityQuestion)) {
            this.securityQuestion = null;
            return "Please select a security question.";
        } else {
            this.securityQuestion = securityQuestion;
            return CHECKMARK;
        }
    }

    public String getSecurityAnswer() {
        return securityAnswer;
    }

    public String setSecurityAnswer(String securityAnswer) {
        if (isEmpty(securityAnswer)) {
            this.securityAnswer = null;
            return "Please enter a security answer.";
        } else {
            this.securityAnswer = securityAnswer;
            return CHECKMARK;
        }
    }

    public boolean isValid() {
        return (firstName != null && lastName != null && email != null && password != null && verifyPassword != null && displayName != null &&  country != null && language != null && securityQuestion != null && securityAnswer != null);
    }
}
