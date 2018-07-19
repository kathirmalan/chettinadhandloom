function statusChangeCallback(response) {

        console.log(JSON.stringify(response));
        // The response object is returned with a status field that lets the
        // app know the current login status of the person.
        // Full docs on the response object can be found in the documentation
        // for FB.getLoginStatus().
        if (response.status === 'connected') {
            // Logged into your app and Facebook.
            console.log('Welcome!  Fetching your information.... ');
            FB.api('/me', {fields: "id,gender,name,picture.width(200).height(200),email,birthday"}, function (response) {
                console.log('Successful login for: ' + response.name);
                console.log(JSON.stringify(response));
            });
        } else {
            // The person is not logged into your app or we are unable to tell.
            // document.getElementById('status').innerHTML = 'Please log ' + 'into this app.';
            console.log("please log in");
        }
    }

    function checkLoginState() {
        FB.getLoginStatus(function (response) {
            statusChangeCallback(response);
        });
    }
    
    function logout(){
        FB.logout(function(response) {
            // user is now logged out
            console.log(response);
        });
    }
    
    window.fbAsyncInit = function () {
        FB.init({
            appId: '1226322394089922',
            cookie: true,
            xfbml: true,
            version: 'v2.8'
        });
        FB.AppEvents.logPageView();
        FB.getLoginStatus(function (response) {
            statusChangeCallback(response);
        });
    };

    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {
            return;
        }
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

