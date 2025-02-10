#!/usr/bin/env python3
# -*- coding: utf-8 -*-
'''
    THIS IS A IMPLE EXAMPLE FOR DISCORD GROUP.
    REFS TO: 
        https://discord.com/channels/466066749440393216/891368193002725426/1129378302742773820

    Versoin: 0.0.1
    Auther: YinMo0913
'''
import subprocess

# DEV ENV:
#   - CHRLINE   v2.6.0
#   - thrift    v0.20.0
#       - py:enum
files = [
    r'./subs/Types.thrift',
    r'./subs/Exceptions.thrift',
    r'./subs/TalkService/ttypes.thrift',
    r'./subs/TalkService/TalkService.thrift',
    r'./subs/E2EEKeyBackupService.thrift',
    r'./subs/AccessTokenRefreshService.thrift',
    r'./subs/BuddyService.thrift',
    r'./subs/CallService.thrift',
    r'./subs/SyncService.thrift',
    r'./subs/HomeSafetyCheckService/ttypes.thrift',
    r'./subs/HomeSafetyCheckService/HomeSafetyCheckService.thrift',
    r'./subs/SquareService/ttypes.thrift',
    r'./subs/SquareService/SquareService.thrift',
    r'./subs/SquareLiveTalkService/ttypes.thrift',
    r'./subs/SquareLiveTalkService/SquareLiveTalkService.thrift',
    r'./subs/SecondaryQrCodeLoginService/ttypes.thrift',
    r'./subs/SecondaryQrCodeLoginService/SecondaryQrCodeLoginService.thrift',
    r'./subs/RelationService/ttypes.thrift',
    r'./subs/RelationService/RelationService.thrift',
    r'./subs/ShopService/ttypes.thrift',
    r'./subs/ShopService/ShopService.thrift',
    r'./subs/ShopCollectionService/ttypes.thrift',
    r'./subs/ShopCollectionService/ShopCollectionService.thrift',
    r'./subs/PremiumFontService/ttypes.thrift',
    r'./subs/PremiumFontService/PremiumFontService.thrift',
    r'./subs/DeviceAttestationService/ttypes.thrift',
    r'./subs/DeviceAttestationService/DeviceAttestationService.thrift',
]
cache_file = r'./CHRLINE_ALL.thrift'

content = ''

for file in files:
    with open(file) as f:
        data = f.read().splitlines(keepends=True)
        raw = ''
        for d in data:
            if not d.startswith('include'):
                raw += d
        content += f'\n\n{raw}'

open(cache_file, 'w+').write(content)

subprocess.run(["thrift", f"--gen", "py", "CHRLINE_ALL.thrift"])