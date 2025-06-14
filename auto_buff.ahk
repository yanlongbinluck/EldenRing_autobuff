#Requires AutoHotkey v2.0
F1::RunActions()
RunActions() {
    ; 长按Up键，初始化祷告释放顺序。
    Send("{Up down}")
    Sleep(2000)
    Send("{Up up}")
    Sleep(100)


    Send("{Left down}")
    Sleep(100)
    Send("{Left up}")
    Sleep(100)

    ;释放第1个祷告
    Send("{RButton down}")
    Sleep(100)
    Send("{RButton up}")
    Sleep(3000) ;等待第1个祷告释放结束

    ;切换祷告
    Send("{e down}")
    Sleep(100)
    Send("{e up}")
    Sleep(100)
    Send("{Up down}")
    Sleep(100)
    Send("{Up up}")
    Sleep(100)

    ;释放第2个祷告
    Send("{RButton down}")
    Sleep(100)
    Send("{RButton up}")
    Sleep(3000) ;等待第2个祷告释放结束

    ; 切换到双持武器状态，准备释放战技
    Send("{Left down}")
    Sleep(100)
    Send("{Left up}")
    Sleep(1000)


    ; 释放战技
    ; 切换到左手武器（E + 鼠标右键）
    Send("{e down}{RButton down}")
    Sleep(100)
    Send("{e up}{RButton up}")
    Sleep(200)

    ; 按下F使用左手武器战技
    Send("{f down}")
    Sleep(100)
    Send("{f up}")
    Sleep(3000) ;等待战技释放结束

    ; 切换回右手武器（E + 鼠标右键）
    Send("{e down}{RButton down}")
    Sleep(100)
    Send("{RButton up}{e up}")
    Sleep(200)

    ; 按下F使用右手武器战技
    Send("{f down}")
    Sleep(100)
    Send("{f up}")
    Sleep(3000) ;等待战技释放结束

    ; 最后R键喝滴露。
    Send("{r down}")
    Sleep(100)
    Send("{r up}")
    Sleep(100) ;
}
