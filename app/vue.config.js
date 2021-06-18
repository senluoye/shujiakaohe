module.exports = {
    publicPath: './',
    outputDir: 'dist',

    devServer: {
        proxy: {
            '/api': {
                target: 'http://localhost:18080',
                // target: 'http://172.16.36.199:18080',
                // target: 'http://47.110.67.104:18080',
                ws: true,
                changeOrigin: true,
                pathRewrite: {
                    '^/api': ''
                }
            }
        }
    },
}
