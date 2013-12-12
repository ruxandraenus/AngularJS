function AccountController($scope, AccountService){
    AccountService.list({}, function(data){
        console.log(data);

    })
}
