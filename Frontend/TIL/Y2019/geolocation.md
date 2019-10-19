### sample code to ask geolocation

```javascript
class Geolocation {
  constructor() {
  }

  showSuccess(position) {
    alert('VoiceMap to access your location');
    console.log('lat:', position.coords.latitude);
    console.log('lng:', position.coords.longitude);
  }

  showError(error) {
    let error_msg;

    switch(error.code) {
      case error.PERMISSION_DENIED:
        error_msg = "User denied the request for Geolocation."
        break;
      case error.POSITION_UNAVAILABLE:
        error_msg = "Location information is unavailable."
        break;
      case error.TIMEOUT:
        error_msg = "The request to get user location timed out."
        break;
      case error.UNKNOWN_ERROR:
        error_msg = "An unknown error occurred."
        break;
    }
    alert(error_msg)
  }

  display() {
    if(navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        this.showSuccess,
        this.showError,
        { enableHighAccuracy: true, maximumAge: 0 }
      );
    } else {
      alert("Geolocation is not supported by this browser");
    }
  }
}


let geo = new Geolocation();
geo.display()
```