function errorCPF() {
    Swal.fire({
        icon: 'error',
        title: 'ERRO',
        text: 'CPF já cadastrado no sistema!',
    })
}

function errorIdadeMotorista() {
    Swal.fire({
        icon: 'error',
        title: 'ERRO',
        text: 'Motorista não pode ter menos de 18 anos!',
    })
}


function errorTelefone() {
    Swal.fire({
        icon: 'error',
        title: 'ERRO',
        text: 'Telefone já cadastrado no sistema!',
    })
}

function errorPlaca() {
    Swal.fire({
        icon: 'error',
        title: 'ERRO',
        text: 'Placa de carro já cadastrado no sistema',
    })
}

function succesCadastro() {
    Swal.fire(
        '',
        'Cadastro realizado!',
        'success'
    )
}
