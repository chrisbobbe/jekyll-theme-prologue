---
title: 맥에서 Karabiner 로 윈도우에서 사용하던 키 쓰기
author: Goosia
layout: post
---

편집기로 ~/.config/karabiner/karabiner.json 파일을 열고 아래 제가 붙여 넣은 소스 중에 마음에 드시는걸 복사해서 넣으세요.

구분은 디스크립션을 보시고

위에서 부터 기능들은
<ol>
 	<li>홈/엔드 사용</li>
 	<li>코맨드 E 로 파인더 열기</li>
 	<li>알트 프린트 스크립으로 클립보드로 부분 캡쳐하기</li>
 	<li>코맨드 L 로 스크린세이버 열기</li>
 	<li>크롬에서 F12로 개발자도구 열기</li>
 	<li>마우스 4번 버튼으로 뒤로 가기</li>
 	<li>마우스 5번 버튼으로 앞으로 가기</li>
 	<li>델키로 파일 삭제하기</li>
 	<li>메뉴키로 어플리케이션창 열기</li>
 	<li>한영키로 한영 변환하기</li>
</ol>
입니다.
<pre class="lang:default decode:true ">{
    "global": {
        "check_for_updates_on_startup": true,
        "show_in_menu_bar": true,
        "show_profile_name_in_menu_bar": false
    },
    "profiles": [
        {
            "complex_modifications": {
                "parameters": {
                    "basic.to_delayed_action_delay_milliseconds": 500,
                    "basic.to_if_alone_timeout_milliseconds": 1000
                },
                "rules": [
                    {
                        "description": "Home/End",
                        "manipulators": [
                            {
                                "conditions": [
                                    {
                                        "bundle_identifiers": [
                                            "^com\\.microsoft\\.rdc\\.osx"
                                        ],
                                        "type": "frontmost_application_unless"
                                    }
                                ],
                                "from": {
                                    "key_code": "home",
                                    "modifiers": {
                                        "optional": [
                                            "any"
                                        ]
                                    }
                                },
                                "to": [
                                    {
                                        "key_code": "left_arrow",
                                        "modifiers": [
                                            "command"
                                        ]
                                    }
                                ],
                                "type": "basic"
                            },
                            {
                                "conditions": [
                                    {
                                        "bundle_identifiers": [
                                            "^com\\.microsoft\\.rdc\\.osx"
                                        ],
                                        "type": "frontmost_application_unless"
                                    }
                                ],
                                "from": {
                                    "key_code": "end",
                                    "modifiers": {
                                        "optional": [
                                            "any"
                                        ]
                                    }
                                },
                                "to": [
                                    {
                                        "key_code": "right_arrow",
                                        "modifiers": [
                                            "command"
                                        ]
                                    }
                                ],
                                "type": "basic"
                            }
                        ]
                    },
                    {
                        "description": "Command + E to Finder",
                        "manipulators": [
                            {
                                "conditions": [
                                    {
                                        "bundle_identifiers": [
                                            "^com\\.microsoft\\.rdc\\.osx"
                                        ],
                                        "type": "frontmost_application_unless"
                                    }
                                ],
                                "from": {
                                    "key_code": "e",
                                    "modifiers": {
                                        "mandatory": [
                                            "command"
                                        ],
                                        "optional": [
                                            "any"
                                        ]
                                    }
                                },
                                "to": [
                                    {
                                        "shell_command": "open ~"
                                    }
                                ],
                                "type": "basic"
                            }
                        ]
                    },
                    {
                        "description": "Alt + PrintScreen Part Capture to ClipBoard",
                        "manipulators": [
                            {
                                "from": {
                                    "key_code": "print_screen",
                                    "modifiers": {
                                        "mandatory": [
                                            "option"
                                        ],
                                        "optional": [
                                            "any"
                                        ]
                                    }
                                },
                                "to": [
                                    {
                                        "key_code": "4",
                                        "modifiers": [
                                            "command",
                                            "shift"
                                        ]
                                    }
                                ],
                                "type": "basic"
                            }
                        ]
                    },
                    {
                        "description": "Command + L to Screen Saver",
                        "manipulators": [
                            {
                                "from": {
                                    "key_code": "l",
                                    "modifiers": {
                                        "mandatory": [
                                            "command"
                                        ],
                                        "optional": [
                                            "any"
                                        ]
                                    }
                                },
                                "to": [
                                    {
                                        "shell_command": "open /System/Library/CoreServices/ScreenSaverEngine.app"
                                    }
                                ],
                                "type": "basic"
                            }
                        ]
                    },
                    {
                        "description": "F12 Developer Tool(For Chrome)",
                        "manipulators": [
                            {
                                "conditions": [
                                    {
                                        "bundle_identifiers": [
                                            "^com\\.google\\.Chrome"
                                        ],
                                        "type": "frontmost_application_if"
                                    }
                                ],
                                "from": {
                                    "key_code": "f12"
                                },
                                "to": [
                                    {
                                        "key_code": "i",
                                        "modifiers": [
                                            "option",
                                            "command"
                                        ]
                                    }
                                ],
                                "type": "basic"
                            }
                        ]
                    },
                    {
                        "description": "Mouse button4 → [ + command (Backward)",
                        "manipulators": [
                            {
                                "conditions": [
                                    {
                                        "bundle_identifiers": [
                                            "^com\\.microsoft\\.rdc\\.osx"
                                        ],
                                        "type": "frontmost_application_unless"
                                    }
                                ],
                                "from": {
                                    "pointing_button": "button4"
                                },
                                "to": [
                                    {
                                        "key_code": "open_bracket",
                                        "modifiers": [
                                            "command"
                                        ]
                                    }
                                ],
                                "type": "basic"
                            }
                        ]
                    },
                    {
                        "description": "Mouse button5 → ] + command (Forward)",
                        "manipulators": [
                            {
                                "conditions": [
                                    {
                                        "bundle_identifiers": [
                                            "^com\\.microsoft\\.rdc\\.osx"
                                        ],
                                        "type": "frontmost_application_unless"
                                    }
                                ],
                                "from": {
                                    "pointing_button": "button5"
                                },
                                "to": [
                                    {
                                        "key_code": "close_bracket",
                                        "modifiers": [
                                            "command"
                                        ]
                                    }
                                ],
                                "type": "basic"
                            }
                        ]
                    },
                    {
                        "description": "DEL → Command Backspace",
                        "manipulators": [
                            {
                                "conditions": [
                                    {
                                        "bundle_identifiers": [
                                            "^com\\.apple\\.finder$"
                                        ],
                                        "type": "frontmost_application_if"
                                    }
                                ],
                                "from": {
                                    "key_code": "delete_forward"
                                },
                                "to": [
                                    {
                                        "key_code": "delete_or_backspace",
                                        "modifiers": [
                                            "command"
                                        ]
                                    }
                                ],
                                "type": "basic"
                            }
                        ]
                    }
                ]
            },
            "devices": [
                {
                    "disable_built_in_keyboard_if_exists": false,
                    "fn_function_keys": [],
                    "identifiers": {
                        "is_keyboard": false,
                        "is_pointing_device": true,
                        "product_id": 64097,
                        "vendor_id": 9639
                    },
                    "ignore": false,
                    "manipulate_caps_lock_led": false,
                    "simple_modifications": []
                },
                {
                    "disable_built_in_keyboard_if_exists": false,
                    "fn_function_keys": [],
                    "identifiers": {
                        "is_keyboard": true,
                        "is_pointing_device": false,
                        "product_id": 30211,
                        "vendor_id": 3141
                    },
                    "ignore": false,
                    "manipulate_caps_lock_led": true,
                    "simple_modifications": []
                },
                {
                    "disable_built_in_keyboard_if_exists": false,
                    "fn_function_keys": [],
                    "identifiers": {
                        "is_keyboard": true,
                        "is_pointing_device": false,
                        "product_id": 65535,
                        "vendor_id": 1452
                    },
                    "ignore": false,
                    "manipulate_caps_lock_led": true,
                    "simple_modifications": []
                }
            ],
            "fn_function_keys": [
                {
                    "from": {
                        "key_code": "f1"
                    },
                    "to": {
                        "consumer_key_code": "display_brightness_decrement"
                    }
                },
                {
                    "from": {
                        "key_code": "f2"
                    },
                    "to": {
                        "consumer_key_code": "display_brightness_increment"
                    }
                },
                {
                    "from": {
                        "key_code": "f3"
                    },
                    "to": {
                        "key_code": "mission_control"
                    }
                },
                {
                    "from": {
                        "key_code": "f4"
                    },
                    "to": {
                        "key_code": "launchpad"
                    }
                },
                {
                    "from": {
                        "key_code": "f5"
                    },
                    "to": {
                        "key_code": "illumination_decrement"
                    }
                },
                {
                    "from": {
                        "key_code": "f6"
                    },
                    "to": {
                        "key_code": "illumination_increment"
                    }
                },
                {
                    "from": {
                        "key_code": "f7"
                    },
                    "to": {
                        "consumer_key_code": "rewind"
                    }
                },
                {
                    "from": {
                        "key_code": "f8"
                    },
                    "to": {
                        "consumer_key_code": "play_or_pause"
                    }
                },
                {
                    "from": {
                        "key_code": "f9"
                    },
                    "to": {
                        "consumer_key_code": "fastforward"
                    }
                },
                {
                    "from": {
                        "key_code": "f10"
                    },
                    "to": {
                        "consumer_key_code": "mute"
                    }
                },
                {
                    "from": {
                        "key_code": "f11"
                    },
                    "to": {
                        "consumer_key_code": "volume_decrement"
                    }
                },
                {
                    "from": {
                        "key_code": "f12"
                    },
                    "to": {
                        "consumer_key_code": "volume_increment"
                    }
                }
            ],
            "name": "Default profile",
            "selected": true,
            "simple_modifications": [
                {
                    "from": {
                        "key_code": "application"
                    },
                    "to": {
                        "key_code": "f4"
                    }
                },
                {
                    "from": {
                        "key_code": "right_alt"
                    },
                    "to": {
                        "key_code": "lang1"
                    }
                }
            ],
            "virtual_hid_keyboard": {
                "caps_lock_delay_milliseconds": 0,
                "keyboard_type": "ansi"
            }
        }
    ]
}
</pre>
&nbsp;

<blockquote>karabiner, macOS, sierra, 단축키설정, 뒤로가기, 맥, 앞으로가기, 하이시에라, 한영변환</blockquote>