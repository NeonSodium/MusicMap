function effa() {
    Swal.fire({
        title: 'Êtes - vous sûr ?',
        text: "Vous ne pourrez plus récupérer votre compte !",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#5bc0de',
        cancelButtonColor: '#f26419',
        confirmButtonText: 'Supprimer !',
        cancelButtonText: 'Annuler',
    }).then((result) => {
        if (result.value) {
            Swal.fire({
                title: 'Votre compte a été supprimé.',
                html:
                '<img style="width: 200px" src="assets/img/gif/sad.gif">',
                confirmButtonText: 'Adieu..',
            }).then(function () {
                setTimeout("location.href = 'effacercompte.php';");
            })
        }
    })
}

function avatar() {
    Swal.fire({
        title: 'Choisir son avatar',
        html:
            '<a href="moncompte.php"><img style="margin: 10px" src="assets/img/Avatar/boy.png" height="60" width="60"></a>'
            + '<a href="moncompte.php"><img style="margin: 10px" src="assets/img/Avatar/girl.png" height="60" width="60">'
            + '<a href="moncompte.php"><img style="margin: 10px" src="assets/img/Avatar/boy-1.png" height="60" width="60">'
            + '<a href="moncompte.php"><img style="margin: 10px" src="assets/img/Avatar/girl-1.png" height="60" width="60">'
            + '<a href="moncompte.php"><img style="margin: 10px" src="assets/img/Avatar/man.png" height="60" width="60">'
            + '<a href="moncompte.php"><img style="margin: 10px" src="assets/img/Avatar/man-1.png" height="60" width="60">'
            + '<a href="moncompte.php"><img style="margin: 10px" src="assets/img/Avatar/man-2.png" height="60" width="60">'
            + '<a href="moncompte.php"><img style="margin: 10px" src="assets/img/Avatar/man-3.png" height="60" width="60">'
            + '<a href="moncompte.php"><img style="margin: 10px" src="assets/img/Avatar/man-4.png" height="60" width="60">',
        confirmButtonText: 'Annuler',
        confirmButtonColor: '#5bc0de',
    });
}

function rechercher() {
    Swal.fire({
        title: "Rentrez le nom d'un artiste",
        html:
            '<img style="width: 200px; padding: 15px" src="assets/img/gif/bongo.gif">'
            +'<form action="recherche.php" method="get">'
            +'<input name="r" type="text" placeholder="Rechercher" style="width: 80%"/>'
            +'<input style="margin: 15px" type="submit" value="Rechercher"/> </form>',
        showCancelButton: false,
        showConfirmButton: false,
    })

}