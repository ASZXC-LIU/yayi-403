import request from '@/utils/request'
export function formatPriceToLong(price1) {
    if (price1 == null || price1 == undefined || price1 == '') {
        return 0;
    }
    else {
        
        let StrPrice = price1.toString();
        console.log(StrPrice);
        // 分割字符串，获取整数部分和小数部分
        let parts = StrPrice.split('.');
        console.log(parts);
        // 如果有小数部分，则将整数部分和小数部分拼接起来
        if (parts.length > 1) {
            let integerPart = parts[0];
            let decimalPart = parts[1];

            // 将小数部分扩展到三位，确保精度
            decimalPart = decimalPart.padEnd(2, '0');

            // 拼接整数部分和小数部分
            let combined = integerPart + decimalPart;

            // 将结果转换为 long 类型
            price1 = parseFloat(combined, 10);
        }else{
            price1 = parseFloat(StrPrice, 10)*100;
        }
        console.log(price1);
        return price1;
    }
}



export function formatPriceToDecimal(price2) {
    price2 = (price2 / 100).toFixed(2);
    return price2;
}



