// 测试注册功能
console.log('开始测试注册功能');

// 模拟表单数据
const registerForm = {
  username: 'testuser123',
  password: '123456'
};

// 验证表单
function validateForm(form) {
  let errors = {};
  let isValid = true;
  
  if (!form.username) {
    errors.username = '请输入用户名';
    isValid = false;
  }
  
  if (!form.password) {
    errors.password = '请输入密码';
    isValid = false;
  } else if (form.password.length < 6) {
    errors.password = '密码长度不能小于6位';
    isValid = false;
  }
  
  return { isValid, errors };
}

// 测试表单验证
const validationResult = validateForm(registerForm);
console.log('表单验证结果:', validationResult);

if (validationResult.isValid) {
  console.log('表单验证通过，准备发送注册请求');
  
  // 模拟注册请求
  setTimeout(() => {
    console.log('注册请求成功');
    console.log('注册成功，用户:', registerForm.username);
  }, 1000);
} else {
  console.log('表单验证失败:', validationResult.errors);
}

console.log('注册功能测试完成');
