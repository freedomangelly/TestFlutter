package com.example.flutter_app

import android.app.AlertDialog
import android.os.Bundle
import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugins.GeneratedPluginRegistrant


class MainActivity: FlutterActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)//这个是创建Flutter工程时MainActivity自带的。

    var methodChannel=MethodChannel(flutterView,"com.example.platform_channel/dalog")
    methodChannel.setMethodCallHandler(object : MethodCallHandler {
      //3
      override fun onMethodCall(methodCall: MethodCall, result: MethodChannel.Result) {
        if ("dialog" == methodCall.method) {
          if (methodCall.hasArgument("content")) {
            showAlertDialog()
            result.success("弹出成功")
          } else {
            result.error("error", "弹出失败", "content is null")
          }
        } else {
          result.notImplemented()
        }
      }

      private fun showAlertDialog() {
        val builder = AlertDialog.Builder(this@MainActivity)
        builder.setPositiveButton("确定", null)
        builder.setTitle("Flutter调用Android")
        builder.show()
      }
    })

  }
}
