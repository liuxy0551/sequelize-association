/**
 * setCtxBody 设置 ctx.body
 */
const setCtxBody = (code = 200, data, message = '成功', extraParams) => {
	code !== 200 && console.log(code, data)
	return { code, data, message, ...extraParams }
}

module.exports = setCtxBody
