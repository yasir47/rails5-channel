(function () {
    App["new"] = App.cable.subscriptions.create("NewChannel", {


        connected: function () {
        },
        disconnected: function () {
        },
        received: function (data) { //show data on view
           $('#data1').append(data['message']);
        },


        user: function () {
            return this.perform('user');
        },


        speak: function (message, text) { // send data to new_chanel.rb to speak method
            this.perform('speak', {
                message: message,
                test: text
            });

        },
    });

}).call(this);

$(document).ready(function(){
    $("#sub").click(function(){
        App.new.speak($('#name').val(),$('#text').val())
    });
});