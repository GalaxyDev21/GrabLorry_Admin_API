<?php
return [
    'settings' => [
        'displayErrorDetails' => true, // set to false in production
        'addContentLengthHeader' => false, // Allow the web server to send the content-length header

        // Renderer settings
        'renderer' => [
            'template_path' => __DIR__ . '/../templates/',
        ],

        // Monolog settings
        'logger' => [
            'name' => 'slim-app',
            'path' => isset($_ENV['docker']) ? 'php://stdout' : __DIR__ . '/../logs/app.log',
            'level' => \Monolog\Logger::DEBUG,
        ],

        //database connection
        'database' => [
            'host' => 'localhost',
            'dbName' => 'lorry',
            'dbUserName' => 'root',
            'dbPassword' => ''
        ],

        //hashid configuration
        'hashid' => [
            'API' => [
                'HASHID_SALT' => 'sdgfsdgsdgnsldjkngldfgldflkdnklf',
                'HASHID_PAD' => 24
            ],
            'LORRYREQID' => [
                'HASHID_SALT' => 'sdgfsdgsdgnsldjkngldfgldflkdnklf',
                'HASHID_PAD' => 8
            ]
        ],

        // mailer credentials
        'mailer' => [
            'from'  =>  'lorryapplication@gmail.com',
            'fromName'  =>  'Lorry Application',
            'smtpHost'  =>  'smtp.gmail.com',
            'smtpUserName'  =>  'lorryapplication@gmail.com',
            'smtpPassword'  =>  'test1234!',
            'smtpPort'  =>  '587',
            'smtpEncryption'  =>  'TLS'
        ],

        //admin email
        'adminMail' => [
            "email" => "connectproapp@gmail.com",
            "name" => "Lorry Admin"
        ]
    ],
];
