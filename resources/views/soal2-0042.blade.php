<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soal 2</title>
    <style>
        .container{
            text-align: center;
            display: block;
        }
        .header {
            font-size: 24pt;
            padding-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            Soal 2
        </div>
        <div class="content">
            <table align="center" class="table">
                <tr>
                    <td>No.</td>
                    <td>Nama</td>
                    <td>NIP</td>
                    <td>Kelamin</td>
                    <td>Alamat</td>
                    <td>No. Telp</td>
                </tr>
                @foreach ($gurus as $i => $guru)
                <tr>
                    <td>{{ ++$i }}</td>
                    <td>{{ $guru->nama_guru }}</td>
                    <td>{{ $guru->nip }}</td>
                    <td>{{ $guru->kelamin }}</td>
                    <td>{{ $guru->alamat_guru }}</td>
                    <td>{{ $guru->telpon_guru }}</td>
                </tr>
                @endforeach
            </table>
        </div>
    </div>
</body>
</html>