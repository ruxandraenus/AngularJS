/**
 * Created by Ruxandra on 12.12.2013.
 */
function AccountController($scope, AccountService){
    AccountService.list({}, function(data){     /*{} - obiect empty*/
        console.log(data);

    })
}
