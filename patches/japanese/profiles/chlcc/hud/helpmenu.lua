root.Overlay.HelpMenu = {
    UseOverlayHelp = true,
    OverlayHelpKbCustomId = 51, -- F1
    Sections = {
        { ["テキスト・操作"] = {
            { Action = "決定", KeyboardMouse = "Enter, Left Click", Controller = "South Button", Touch = "Tap" },
            { Action = "キャンセル／テキストを隠す", KeyboardMouse = "Backspace, Right Click", Controller = "East Button", Touch = "Two Finger Tap, Pinch" },
            { Action = "項目の選択", KeyboardMouse = "Arrow Keys", Controller = "D-Pad, Left Stick", Touch = "-" },
            { Action = "オートモード", KeyboardMouse = "F3, Delete", Controller = "West Button", Touch = "Touch and Hold" },
            { Action = "スキップモード／次のページ", KeyboardMouse = "E", Controller = "Right Shoulder", Touch = "Flick Left" },
            { Action = "強制スキップ／前のページ", KeyboardMouse = "Ctrl, Q", Controller = "Left Shoulder", Touch = "Flick Right" },
            { Action = "妄想トリガー（左）", KeyboardMouse = "Z", Controller = "Left Trigger", Touch = "Tap the Left Heart" },
            { Action = "妄想トリガー（右）", KeyboardMouse = "C", Controller = "Right Trigger", Touch = "Tap the Right Heart" },
            { Action = "画面スクロール／バックログ", KeyboardMouse = "Arrows, Mouse Wheel", Controller = "D-Pad, Stick", Touch = "Swipe" },
        }},
        { ["メニュー・システム"] = {
            { Action = "システムメニュー", KeyboardMouse = "1, Right Click", Controller = "Start", Touch = "Two Finger Tap, Pinch" },
            { Action = "操作ガイド", KeyboardMouse = "F1", Controller = "-", Touch = "-" },
            { Action = "バックログ", KeyboardMouse = "F2, Insert", Controller = "North Button", Touch = "Swipe Down" },
            { Action = "Tips", KeyboardMouse = "F4", Controller = "Select", Touch = "-" },
            { Action = "ロード", KeyboardMouse = "F5", Controller = "-", Touch = "-" },
            { Action = "セーブ", KeyboardMouse = "F6", Controller = "-", Touch = "-" },
            { Action = "クイックロード", KeyboardMouse = "F7", Controller = "-", Touch = "-" },
            { Action = "クイックセーブ", KeyboardMouse = "F8", Controller = "Right Stick Click", Touch = "-" },
            { Action = "設定", KeyboardMouse = "F9", Controller = "-", Touch = "-" },
            { Action = "タイトル", KeyboardMouse = "F10", Controller = "-", Touch = "-" },
            { Action = "フルスクリーン切替", KeyboardMouse = "Alt-Enter", Controller = "-", Touch = "-" },
        }},
    },
}