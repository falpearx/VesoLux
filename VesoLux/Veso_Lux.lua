
if not game:IsLoaded() then
	local notLoaded = Instance.new("Message")
	notLoaded.Parent = game:GetService("CoreGui")
	notLoaded.Text = 'Waiting For Game Loading...'
	game.Loaded:Wait()
	notLoaded:Destroy()
end

if game:HttpGet("https://raw.githubusercontent.com/Uronow/VesoLux/main/games/skywars.ver") == "VL2.0.7B" then else return print("You Are Using Old Version Of Veso Lux\n Your Version : VL2.0.0\nNew Version : "..loadstring(game:HttpGet("https://raw.githubusercontent.com/Uronow/VesoLux/main/ver.lua"))()) end
local asd = "sa"
if  asd == "sa" then else return print("SXD") end
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function aes()
--[[
	Copyright 2019 Tyler Richard Hoyer

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

		http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
]]

local GF8x2 = {
	[0]=0x00,0x02,0x04,0x06,0x08,0x0a,0x0c,0x0e,0x10,0x12,0x14,0x16,0x18,0x1a,0x1c,0x1e,
		0x20,0x22,0x24,0x26,0x28,0x2a,0x2c,0x2e,0x30,0x32,0x34,0x36,0x38,0x3a,0x3c,0x3e,
		0x40,0x42,0x44,0x46,0x48,0x4a,0x4c,0x4e,0x50,0x52,0x54,0x56,0x58,0x5a,0x5c,0x5e,
		0x60,0x62,0x64,0x66,0x68,0x6a,0x6c,0x6e,0x70,0x72,0x74,0x76,0x78,0x7a,0x7c,0x7e,
		0x80,0x82,0x84,0x86,0x88,0x8a,0x8c,0x8e,0x90,0x92,0x94,0x96,0x98,0x9a,0x9c,0x9e,
		0xa0,0xa2,0xa4,0xa6,0xa8,0xaa,0xac,0xae,0xb0,0xb2,0xb4,0xb6,0xb8,0xba,0xbc,0xbe,
		0xc0,0xc2,0xc4,0xc6,0xc8,0xca,0xcc,0xce,0xd0,0xd2,0xd4,0xd6,0xd8,0xda,0xdc,0xde,
		0xe0,0xe2,0xe4,0xe6,0xe8,0xea,0xec,0xee,0xf0,0xf2,0xf4,0xf6,0xf8,0xfa,0xfc,0xfe,
		0x1b,0x19,0x1f,0x1d,0x13,0x11,0x17,0x15,0x0b,0x09,0x0f,0x0d,0x03,0x01,0x07,0x05,
		0x3b,0x39,0x3f,0x3d,0x33,0x31,0x37,0x35,0x2b,0x29,0x2f,0x2d,0x23,0x21,0x27,0x25,
		0x5b,0x59,0x5f,0x5d,0x53,0x51,0x57,0x55,0x4b,0x49,0x4f,0x4d,0x43,0x41,0x47,0x45,
		0x7b,0x79,0x7f,0x7d,0x73,0x71,0x77,0x75,0x6b,0x69,0x6f,0x6d,0x63,0x61,0x67,0x65,
		0x9b,0x99,0x9f,0x9d,0x93,0x91,0x97,0x95,0x8b,0x89,0x8f,0x8d,0x83,0x81,0x87,0x85,
		0xbb,0xb9,0xbf,0xbd,0xb3,0xb1,0xb7,0xb5,0xab,0xa9,0xaf,0xad,0xa3,0xa1,0xa7,0xa5,
		0xdb,0xd9,0xdf,0xdd,0xd3,0xd1,0xd7,0xd5,0xcb,0xc9,0xcf,0xcd,0xc3,0xc1,0xc7,0xc5,
		0xfb,0xf9,0xff,0xfd,0xf3,0xf1,0xf7,0xf5,0xeb,0xe9,0xef,0xed,0xe3,0xe1,0xe7,0xe5
	}
	
	local GF8x3 = {
	[0]=0x00,0x03,0x06,0x05,0x0c,0x0f,0x0a,0x09,0x18,0x1b,0x1e,0x1d,0x14,0x17,0x12,0x11,
		0x30,0x33,0x36,0x35,0x3c,0x3f,0x3a,0x39,0x28,0x2b,0x2e,0x2d,0x24,0x27,0x22,0x21,
		0x60,0x63,0x66,0x65,0x6c,0x6f,0x6a,0x69,0x78,0x7b,0x7e,0x7d,0x74,0x77,0x72,0x71,
		0x50,0x53,0x56,0x55,0x5c,0x5f,0x5a,0x59,0x48,0x4b,0x4e,0x4d,0x44,0x47,0x42,0x41,
		0xc0,0xc3,0xc6,0xc5,0xcc,0xcf,0xca,0xc9,0xd8,0xdb,0xde,0xdd,0xd4,0xd7,0xd2,0xd1,
		0xf0,0xf3,0xf6,0xf5,0xfc,0xff,0xfa,0xf9,0xe8,0xeb,0xee,0xed,0xe4,0xe7,0xe2,0xe1,
		0xa0,0xa3,0xa6,0xa5,0xac,0xaf,0xaa,0xa9,0xb8,0xbb,0xbe,0xbd,0xb4,0xb7,0xb2,0xb1,
		0x90,0x93,0x96,0x95,0x9c,0x9f,0x9a,0x99,0x88,0x8b,0x8e,0x8d,0x84,0x87,0x82,0x81,
		0x9b,0x98,0x9d,0x9e,0x97,0x94,0x91,0x92,0x83,0x80,0x85,0x86,0x8f,0x8c,0x89,0x8a,
		0xab,0xa8,0xad,0xae,0xa7,0xa4,0xa1,0xa2,0xb3,0xb0,0xb5,0xb6,0xbf,0xbc,0xb9,0xba,
		0xfb,0xf8,0xfd,0xfe,0xf7,0xf4,0xf1,0xf2,0xe3,0xe0,0xe5,0xe6,0xef,0xec,0xe9,0xea,
		0xcb,0xc8,0xcd,0xce,0xc7,0xc4,0xc1,0xc2,0xd3,0xd0,0xd5,0xd6,0xdf,0xdc,0xd9,0xda,
		0x5b,0x58,0x5d,0x5e,0x57,0x54,0x51,0x52,0x43,0x40,0x45,0x46,0x4f,0x4c,0x49,0x4a,
		0x6b,0x68,0x6d,0x6e,0x67,0x64,0x61,0x62,0x73,0x70,0x75,0x76,0x7f,0x7c,0x79,0x7a,
		0x3b,0x38,0x3d,0x3e,0x37,0x34,0x31,0x32,0x23,0x20,0x25,0x26,0x2f,0x2c,0x29,0x2a,
		0x0b,0x08,0x0d,0x0e,0x07,0x04,0x01,0x02,0x13,0x10,0x15,0x16,0x1f,0x1c,0x19,0x1a
	}
	
	local GF8x9 = {
	[0]=0x00,0x09,0x12,0x1b,0x24,0x2d,0x36,0x3f,0x48,0x41,0x5a,0x53,0x6c,0x65,0x7e,0x77,
		0x90,0x99,0x82,0x8b,0xb4,0xbd,0xa6,0xaf,0xd8,0xd1,0xca,0xc3,0xfc,0xf5,0xee,0xe7,
		0x3b,0x32,0x29,0x20,0x1f,0x16,0x0d,0x04,0x73,0x7a,0x61,0x68,0x57,0x5e,0x45,0x4c,
		0xab,0xa2,0xb9,0xb0,0x8f,0x86,0x9d,0x94,0xe3,0xea,0xf1,0xf8,0xc7,0xce,0xd5,0xdc,
		0x76,0x7f,0x64,0x6d,0x52,0x5b,0x40,0x49,0x3e,0x37,0x2c,0x25,0x1a,0x13,0x08,0x01,
		0xe6,0xef,0xf4,0xfd,0xc2,0xcb,0xd0,0xd9,0xae,0xa7,0xbc,0xb5,0x8a,0x83,0x98,0x91,
		0x4d,0x44,0x5f,0x56,0x69,0x60,0x7b,0x72,0x05,0x0c,0x17,0x1e,0x21,0x28,0x33,0x3a,
		0xdd,0xd4,0xcf,0xc6,0xf9,0xf0,0xeb,0xe2,0x95,0x9c,0x87,0x8e,0xb1,0xb8,0xa3,0xaa,
		0xec,0xe5,0xfe,0xf7,0xc8,0xc1,0xda,0xd3,0xa4,0xad,0xb6,0xbf,0x80,0x89,0x92,0x9b,
		0x7c,0x75,0x6e,0x67,0x58,0x51,0x4a,0x43,0x34,0x3d,0x26,0x2f,0x10,0x19,0x02,0x0b,
		0xd7,0xde,0xc5,0xcc,0xf3,0xfa,0xe1,0xe8,0x9f,0x96,0x8d,0x84,0xbb,0xb2,0xa9,0xa0,
		0x47,0x4e,0x55,0x5c,0x63,0x6a,0x71,0x78,0x0f,0x06,0x1d,0x14,0x2b,0x22,0x39,0x30,
		0x9a,0x93,0x88,0x81,0xbe,0xb7,0xac,0xa5,0xd2,0xdb,0xc0,0xc9,0xf6,0xff,0xe4,0xed,
		0x0a,0x03,0x18,0x11,0x2e,0x27,0x3c,0x35,0x42,0x4b,0x50,0x59,0x66,0x6f,0x74,0x7d,
		0xa1,0xa8,0xb3,0xba,0x85,0x8c,0x97,0x9e,0xe9,0xe0,0xfb,0xf2,0xcd,0xc4,0xdf,0xd6,
		0x31,0x38,0x23,0x2a,0x15,0x1c,0x07,0x0e,0x79,0x70,0x6b,0x62,0x5d,0x54,0x4f,0x46
	}
	
	local GF8x11 = {
	[0]=0x00,0x0b,0x16,0x1d,0x2c,0x27,0x3a,0x31,0x58,0x53,0x4e,0x45,0x74,0x7f,0x62,0x69,
		0xb0,0xbb,0xa6,0xad,0x9c,0x97,0x8a,0x81,0xe8,0xe3,0xfe,0xf5,0xc4,0xcf,0xd2,0xd9,
		0x7b,0x70,0x6d,0x66,0x57,0x5c,0x41,0x4a,0x23,0x28,0x35,0x3e,0x0f,0x04,0x19,0x12,
		0xcb,0xc0,0xdd,0xd6,0xe7,0xec,0xf1,0xfa,0x93,0x98,0x85,0x8e,0xbf,0xb4,0xa9,0xa2,
		0xf6,0xfd,0xe0,0xeb,0xda,0xd1,0xcc,0xc7,0xae,0xa5,0xb8,0xb3,0x82,0x89,0x94,0x9f,
		0x46,0x4d,0x50,0x5b,0x6a,0x61,0x7c,0x77,0x1e,0x15,0x08,0x03,0x32,0x39,0x24,0x2f,
		0x8d,0x86,0x9b,0x90,0xa1,0xaa,0xb7,0xbc,0xd5,0xde,0xc3,0xc8,0xf9,0xf2,0xef,0xe4,
		0x3d,0x36,0x2b,0x20,0x11,0x1a,0x07,0x0c,0x65,0x6e,0x73,0x78,0x49,0x42,0x5f,0x54,
		0xf7,0xfc,0xe1,0xea,0xdb,0xd0,0xcd,0xc6,0xaf,0xa4,0xb9,0xb2,0x83,0x88,0x95,0x9e,
		0x47,0x4c,0x51,0x5a,0x6b,0x60,0x7d,0x76,0x1f,0x14,0x09,0x02,0x33,0x38,0x25,0x2e,
		0x8c,0x87,0x9a,0x91,0xa0,0xab,0xb6,0xbd,0xd4,0xdf,0xc2,0xc9,0xf8,0xf3,0xee,0xe5,
		0x3c,0x37,0x2a,0x21,0x10,0x1b,0x06,0x0d,0x64,0x6f,0x72,0x79,0x48,0x43,0x5e,0x55,
		0x01,0x0a,0x17,0x1c,0x2d,0x26,0x3b,0x30,0x59,0x52,0x4f,0x44,0x75,0x7e,0x63,0x68,
		0xb1,0xba,0xa7,0xac,0x9d,0x96,0x8b,0x80,0xe9,0xe2,0xff,0xf4,0xc5,0xce,0xd3,0xd8,
		0x7a,0x71,0x6c,0x67,0x56,0x5d,0x40,0x4b,0x22,0x29,0x34,0x3f,0x0e,0x05,0x18,0x13,
		0xca,0xc1,0xdc,0xd7,0xe6,0xed,0xf0,0xfb,0x92,0x99,0x84,0x8f,0xbe,0xb5,0xa8,0xa3
	}
	
	local GF8x13 = {
	[0]=0x00,0x0d,0x1a,0x17,0x34,0x39,0x2e,0x23,0x68,0x65,0x72,0x7f,0x5c,0x51,0x46,0x4b,
		0xd0,0xdd,0xca,0xc7,0xe4,0xe9,0xfe,0xf3,0xb8,0xb5,0xa2,0xaf,0x8c,0x81,0x96,0x9b,
		0xbb,0xb6,0xa1,0xac,0x8f,0x82,0x95,0x98,0xd3,0xde,0xc9,0xc4,0xe7,0xea,0xfd,0xf0,
		0x6b,0x66,0x71,0x7c,0x5f,0x52,0x45,0x48,0x03,0x0e,0x19,0x14,0x37,0x3a,0x2d,0x20,
		0x6d,0x60,0x77,0x7a,0x59,0x54,0x43,0x4e,0x05,0x08,0x1f,0x12,0x31,0x3c,0x2b,0x26,
		0xbd,0xb0,0xa7,0xaa,0x89,0x84,0x93,0x9e,0xd5,0xd8,0xcf,0xc2,0xe1,0xec,0xfb,0xf6,
		0xd6,0xdb,0xcc,0xc1,0xe2,0xef,0xf8,0xf5,0xbe,0xb3,0xa4,0xa9,0x8a,0x87,0x90,0x9d,
		0x06,0x0b,0x1c,0x11,0x32,0x3f,0x28,0x25,0x6e,0x63,0x74,0x79,0x5a,0x57,0x40,0x4d,
		0xda,0xd7,0xc0,0xcd,0xee,0xe3,0xf4,0xf9,0xb2,0xbf,0xa8,0xa5,0x86,0x8b,0x9c,0x91,
		0x0a,0x07,0x10,0x1d,0x3e,0x33,0x24,0x29,0x62,0x6f,0x78,0x75,0x56,0x5b,0x4c,0x41,
		0x61,0x6c,0x7b,0x76,0x55,0x58,0x4f,0x42,0x09,0x04,0x13,0x1e,0x3d,0x30,0x27,0x2a,
		0xb1,0xbc,0xab,0xa6,0x85,0x88,0x9f,0x92,0xd9,0xd4,0xc3,0xce,0xed,0xe0,0xf7,0xfa,
		0xb7,0xba,0xad,0xa0,0x83,0x8e,0x99,0x94,0xdf,0xd2,0xc5,0xc8,0xeb,0xe6,0xf1,0xfc,
		0x67,0x6a,0x7d,0x70,0x53,0x5e,0x49,0x44,0x0f,0x02,0x15,0x18,0x3b,0x36,0x21,0x2c,
		0x0c,0x01,0x16,0x1b,0x38,0x35,0x22,0x2f,0x64,0x69,0x7e,0x73,0x50,0x5d,0x4a,0x47,
		0xdc,0xd1,0xc6,0xcb,0xe8,0xe5,0xf2,0xff,0xb4,0xb9,0xae,0xa3,0x80,0x8d,0x9a,0x97
	}
	
	local GF8x14 = {
	[0]=0x00,0x0e,0x1c,0x12,0x38,0x36,0x24,0x2a,0x70,0x7e,0x6c,0x62,0x48,0x46,0x54,0x5a,
		0xe0,0xee,0xfc,0xf2,0xd8,0xd6,0xc4,0xca,0x90,0x9e,0x8c,0x82,0xa8,0xa6,0xb4,0xba,
		0xdb,0xd5,0xc7,0xc9,0xe3,0xed,0xff,0xf1,0xab,0xa5,0xb7,0xb9,0x93,0x9d,0x8f,0x81,
		0x3b,0x35,0x27,0x29,0x03,0x0d,0x1f,0x11,0x4b,0x45,0x57,0x59,0x73,0x7d,0x6f,0x61,
		0xad,0xa3,0xb1,0xbf,0x95,0x9b,0x89,0x87,0xdd,0xd3,0xc1,0xcf,0xe5,0xeb,0xf9,0xf7,
		0x4d,0x43,0x51,0x5f,0x75,0x7b,0x69,0x67,0x3d,0x33,0x21,0x2f,0x05,0x0b,0x19,0x17,
		0x76,0x78,0x6a,0x64,0x4e,0x40,0x52,0x5c,0x06,0x08,0x1a,0x14,0x3e,0x30,0x22,0x2c,
		0x96,0x98,0x8a,0x84,0xae,0xa0,0xb2,0xbc,0xe6,0xe8,0xfa,0xf4,0xde,0xd0,0xc2,0xcc,
		0x41,0x4f,0x5d,0x53,0x79,0x77,0x65,0x6b,0x31,0x3f,0x2d,0x23,0x09,0x07,0x15,0x1b,
		0xa1,0xaf,0xbd,0xb3,0x99,0x97,0x85,0x8b,0xd1,0xdf,0xcd,0xc3,0xe9,0xe7,0xf5,0xfb,
		0x9a,0x94,0x86,0x88,0xa2,0xac,0xbe,0xb0,0xea,0xe4,0xf6,0xf8,0xd2,0xdc,0xce,0xc0,
		0x7a,0x74,0x66,0x68,0x42,0x4c,0x5e,0x50,0x0a,0x04,0x16,0x18,0x32,0x3c,0x2e,0x20,
		0xec,0xe2,0xf0,0xfe,0xd4,0xda,0xc8,0xc6,0x9c,0x92,0x80,0x8e,0xa4,0xaa,0xb8,0xb6,
		0x0c,0x02,0x10,0x1e,0x34,0x3a,0x28,0x26,0x7c,0x72,0x60,0x6e,0x44,0x4a,0x58,0x56,
		0x37,0x39,0x2b,0x25,0x0f,0x01,0x13,0x1d,0x47,0x49,0x5b,0x55,0x7f,0x71,0x63,0x6d,
		0xd7,0xd9,0xcb,0xc5,0xef,0xe1,0xf3,0xfd,0xa7,0xa9,0xbb,0xb5,0x9f,0x91,0x83,0x8d
	}
	
	local s = {
	[0]=0x63,0x7C,0x77,0x7B,0xF2,0x6B,0x6F,0xC5,0x30,0x01,0x67,0x2B,0xFE,0xD7,0xAB,0x76,
		0xCA,0x82,0xC9,0x7D,0xFA,0x59,0x47,0xF0,0xAD,0xD4,0xA2,0xAF,0x9C,0xA4,0x72,0xC0,
		0xB7,0xFD,0x93,0x26,0x36,0x3F,0xF7,0xCC,0x34,0xA5,0xE5,0xF1,0x71,0xD8,0x31,0x15,
		0x04,0xC7,0x23,0xC3,0x18,0x96,0x05,0x9A,0x07,0x12,0x80,0xE2,0xEB,0x27,0xB2,0x75,
		0x09,0x83,0x2C,0x1A,0x1B,0x6E,0x5A,0xA0,0x52,0x3B,0xD6,0xB3,0x29,0xE3,0x2F,0x84,
		0x53,0xD1,0x00,0xED,0x20,0xFC,0xB1,0x5B,0x6A,0xCB,0xBE,0x39,0x4A,0x4C,0x58,0xCF,
		0xD0,0xEF,0xAA,0xFB,0x43,0x4D,0x33,0x85,0x45,0xF9,0x02,0x7F,0x50,0x3C,0x9F,0xA8,
		0x51,0xA3,0x40,0x8F,0x92,0x9D,0x38,0xF5,0xBC,0xB6,0xDA,0x21,0x10,0xFF,0xF3,0xD2,
		0xCD,0x0C,0x13,0xEC,0x5F,0x97,0x44,0x17,0xC4,0xA7,0x7E,0x3D,0x64,0x5D,0x19,0x73,
		0x60,0x81,0x4F,0xDC,0x22,0x2A,0x90,0x88,0x46,0xEE,0xB8,0x14,0xDE,0x5E,0x0B,0xDB,
		0xE0,0x32,0x3A,0x0A,0x49,0x06,0x24,0x5C,0xC2,0xD3,0xAC,0x62,0x91,0x95,0xE4,0x79,
		0xE7,0xC8,0x37,0x6D,0x8D,0xD5,0x4E,0xA9,0x6C,0x56,0xF4,0xEA,0x65,0x7A,0xAE,0x08,
		0xBA,0x78,0x25,0x2E,0x1C,0xA6,0xB4,0xC6,0xE8,0xDD,0x74,0x1F,0x4B,0xBD,0x8B,0x8A,
		0x70,0x3E,0xB5,0x66,0x48,0x03,0xF6,0x0E,0x61,0x35,0x57,0xB9,0x86,0xC1,0x1D,0x9E,
		0xE1,0xF8,0x98,0x11,0x69,0xD9,0x8E,0x94,0x9B,0x1E,0x87,0xE9,0xCE,0x55,0x28,0xDF,
		0x8C,0xA1,0x89,0x0D,0xBF,0xE6,0x42,0x68,0x41,0x99,0x2D,0x0F,0xB0,0x54,0xBB,0x16
	}
	
	local si = {
	[0]=0x52,0x09,0x6A,0xD5,0x30,0x36,0xA5,0x38,0xBF,0x40,0xA3,0x9E,0x81,0xF3,0xD7,0xFB,
		0x7C,0xE3,0x39,0x82,0x9B,0x2F,0xFF,0x87,0x34,0x8E,0x43,0x44,0xC4,0xDE,0xE9,0xCB,
		0x54,0x7B,0x94,0x32,0xA6,0xC2,0x23,0x3D,0xEE,0x4C,0x95,0x0B,0x42,0xFA,0xC3,0x4E,
		0x08,0x2E,0xA1,0x66,0x28,0xD9,0x24,0xB2,0x76,0x5B,0xA2,0x49,0x6D,0x8B,0xD1,0x25,
		0x72,0xF8,0xF6,0x64,0x86,0x68,0x98,0x16,0xD4,0xA4,0x5C,0xCC,0x5D,0x65,0xB6,0x92,
		0x6C,0x70,0x48,0x50,0xFD,0xED,0xB9,0xDA,0x5E,0x15,0x46,0x57,0xA7,0x8D,0x9D,0x84,
		0x90,0xD8,0xAB,0x00,0x8C,0xBC,0xD3,0x0A,0xF7,0xE4,0x58,0x05,0xB8,0xB3,0x45,0x06,
		0xD0,0x2C,0x1E,0x8F,0xCA,0x3F,0x0F,0x02,0xC1,0xAF,0xBD,0x03,0x01,0x13,0x8A,0x6B,
		0x3A,0x91,0x11,0x41,0x4F,0x67,0xDC,0xEA,0x97,0xF2,0xCF,0xCE,0xF0,0xB4,0xE6,0x73,
		0x96,0xAC,0x74,0x22,0xE7,0xAD,0x35,0x85,0xE2,0xF9,0x37,0xE8,0x1C,0x75,0xDF,0x6E,
		0x47,0xF1,0x1A,0x71,0x1D,0x29,0xC5,0x89,0x6F,0xB7,0x62,0x0E,0xAA,0x18,0xBE,0x1B,
		0xFC,0x56,0x3E,0x4B,0xC6,0xD2,0x79,0x20,0x9A,0xDB,0xC0,0xFE,0x78,0xCD,0x5A,0xF4,
		0x1F,0xDD,0xA8,0x33,0x88,0x07,0xC7,0x31,0xB1,0x12,0x10,0x59,0x27,0x80,0xEC,0x5F,
		0x60,0x51,0x7F,0xA9,0x19,0xB5,0x4A,0x0D,0x2D,0xE5,0x7A,0x9F,0x93,0xC9,0x9C,0xEF,
		0xA0,0xE0,0x3B,0x4D,0xAE,0x2A,0xF5,0xB0,0xC8,0xEB,0xBB,0x3C,0x83,0x53,0x99,0x61,
		0x17,0x2B,0x04,0x7E,0xBA,0x77,0xD6,0x26,0xE1,0x69,0x14,0x63,0x55,0x21,0x0C,0x7D
	}
	
	local rcon = {
		0x8d,0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80,0x1b,0x36,0x6c,0xd8,0xab,0x4d,0x9a,
		0x2f,0x5e,0xbc,0x63,0xc6,0x97,0x35,0x6a,0xd4,0xb3,0x7d,0xfa,0xef,0xc5,0x91,0x39,
		0x72,0xe4,0xd3,0xbd,0x61,0xc2,0x9f,0x25,0x4a,0x94,0x33,0x66,0xcc,0x83,0x1d,0x3a,
		0x74,0xe8,0xcb,0x8d,0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80,0x1b,0x36,0x6c,0xd8,
		0xab,0x4d,0x9a,0x2f,0x5e,0xbc,0x63,0xc6,0x97,0x35,0x6a,0xd4,0xb3,0x7d,0xfa,0xef,
		0xc5,0x91,0x39,0x72,0xe4,0xd3,0xbd,0x61,0xc2,0x9f,0x25,0x4a,0x94,0x33,0x66,0xcc,
		0x83,0x1d,0x3a,0x74,0xe8,0xcb,0x8d,0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80,0x1b,
		0x36,0x6c,0xd8,0xab,0x4d,0x9a,0x2f,0x5e,0xbc,0x63,0xc6,0x97,0x35,0x6a,0xd4,0xb3,
		0x7d,0xfa,0xef,0xc5,0x91,0x39,0x72,0xe4,0xd3,0xbd,0x61,0xc2,0x9f,0x25,0x4a,0x94,
		0x33,0x66,0xcc,0x83,0x1d,0x3a,0x74,0xe8,0xcb,0x8d,0x01,0x02,0x04,0x08,0x10,0x20,
		0x40,0x80,0x1b,0x36,0x6c,0xd8,0xab,0x4d,0x9a,0x2f,0x5e,0xbc,0x63,0xc6,0x97,0x35,
		0x6a,0xd4,0xb3,0x7d,0xfa,0xef,0xc5,0x91,0x39,0x72,0xe4,0xd3,0xbd,0x61,0xc2,0x9f,
		0x25,0x4a,0x94,0x33,0x66,0xcc,0x83,0x1d,0x3a,0x74,0xe8,0xcb,0x8d,0x01,0x02,0x04,
		0x08,0x10,0x20,0x40,0x80,0x1b,0x36,0x6c,0xd8,0xab,0x4d,0x9a,0x2f,0x5e,0xbc,0x63,
		0xc6,0x97,0x35,0x6a,0xd4,0xb3,0x7d,0xfa,0xef,0xc5,0x91,0x39,0x72,0xe4,0xd3,0xbd,
		0x61,0xc2,0x9f,0x25,0x4a,0x94,0x33,0x66,0xcc,0x83,0x1d,0x3a,0x74,0xe8,0xcb,0x8d
	}
	
	local xor4 = {
	[0]=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
		1,0,3,2,5,4,7,6,9,8,11,10,13,12,15,14,
		2,3,0,1,6,7,4,5,10,11,8,9,14,15,12,13,
		3,2,1,0,7,6,5,4,11,10,9,8,15,14,13,12,
		4,5,6,7,0,1,2,3,12,13,14,15,8,9,10,11,
		5,4,7,6,1,0,3,2,13,12,15,14,9,8,11,10,
		6,7,4,5,2,3,0,1,14,15,12,13,10,11,8,9,
		7,6,5,4,3,2,1,0,15,14,13,12,11,10,9,8,
		8,9,10,11,12,13,14,15,0,1,2,3,4,5,6,7,
		9,8,11,10,13,12,15,14,1,0,3,2,5,4,7,6,
		10,11,8,9,14,15,12,13,2,3,0,1,6,7,4,5,
		11,10,9,8,15,14,13,12,3,2,1,0,7,6,5,4,
		12,13,14,15,8,9,10,11,4,5,6,7,0,1,2,3,
		13,12,15,14,9,8,11,10,5,4,7,6,1,0,3,2,
		14,15,12,13,10,11,8,9,6,7,4,5,2,3,0,1,
		15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0,
	}
	
	local function xor8(a, b)
		local al = a % 16
		local bl = b % 16
		return 16 * xor4[a - al + (b - bl) / 16] + xor4[16 * al + bl]
	end
	
	local function addRoundKey(state, key)
		for i, byte in next, state do
			state[i] = xor8(byte, key[i])
		end
	end
	
	local function subBytes(state, s_box)
		for i, byte in next, state do
			state[i] = s_box[byte]
		end
	end
	
	local function shiftRows(state)
		state[5], state[6], state[7], state[8] =
		state[6], state[7], state[8], state[5]
	
		state[9], state[10], state[11], state[12] =
		state[11], state[12], state[9], state[10]
	
		state[13], state[14], state[15], state[16] =
		state[16], state[13], state[14], state[15]
	end
	
	local function inv_shiftRows(state)
		state[6], state[7], state[8], state[5] =
		state[5], state[6], state[7], state[8]
	
		state[11], state[12], state[9], state[10] =
		state[9], state[10], state[11], state[12]
	
		state[16], state[13], state[14], state[15] =
		state[13], state[14], state[15], state[16]
	end
	
	local function mixColumns(state)
		for cur = 1, 4 do
			local a, b, c, d = state[cur], state[cur + 4], state[cur + 8], state[cur + 12]
			state[cur +  0] = xor8(xor8(xor8(GF8x2[a], GF8x3[b]), c), d)
			state[cur +  4] = xor8(xor8(xor8(a, GF8x2[b]), GF8x3[c]), d)
			state[cur +  8] = xor8(xor8(xor8(a, b), GF8x2[c]), GF8x3[d])
			state[cur + 12] = xor8(xor8(xor8(GF8x3[a], b), c), GF8x2[d])
		end
	end
	
	local function inv_mixColumns(state)
		for cur = 1, 4 do
			local a, b, c, d = state[cur], state[cur + 4], state[cur + 8], state[cur + 12]
			state[cur +  0] = xor8(xor8(xor8(GF8x14[a], GF8x11[b]), GF8x13[c]), GF8x9[d])
			state[cur +  4] = xor8(xor8(xor8(GF8x9[a], GF8x14[b]), GF8x11[c]), GF8x13[d])
			state[cur +  8] = xor8(xor8(xor8(GF8x13[a], GF8x9[b]), GF8x14[c]), GF8x11[d])
			state[cur + 12] = xor8(xor8(xor8(GF8x11[a], GF8x13[b]), GF8x9[c]), GF8x14[d])
		end
	end
	
	-- 256-bit key constants
	local n = 32 -- number of bytes in the 256-bit encryption key
	local b = 240 -- number of bytes in 15 128-bit round keys
	local function schedule256(key)
		local expanded = {}
		for c = 0, n do
			local byte = key % 256
			expanded[c] = byte
			key = (key - byte) / 256
		end
	
		local i = 1
		local c = n
		local t1 = expanded[1]
		local t2 = expanded[2]
		local t3 = expanded[3]
		local t4 = expanded[4]
		while c < b do
			t1, t2, t3, t4 = xor8(rcon[i], s[t2]), s[t3], s[t4], s[t1]
			i = i + 1
	
			for _ = 1, 4 do
				c = c + 1
				t1 = xor8(t1, expanded[c - n])
				expanded[c] = t1
	
				c = c + 1
				t2 = xor8(t2, expanded[c - n])
				expanded[c] = t2
	
				c = c + 1
				t3 = xor8(t3, expanded[c - n])
				expanded[c] = t3
	
				c = c + 1
				t4 = xor8(t4, expanded[c - n])
				expanded[c] = t4
			end
	
			t1 = s[t1]
			t2 = s[t2]
			t3 = s[t3]
			t4 = s[t4]
	
			for _ = 1, 4 do
				c = c + 1
				t1 = xor8(t1, expanded[c - n])
				expanded[c] = t1
	
				c = c + 1
				t2 = xor8(t2, expanded[c - n])
				expanded[c] = t2
	
				c = c + 1
				t3 = xor8(t3, expanded[c - n])
				expanded[c] = t3
	
				c = c + 1
				t4 = xor8(t4, expanded[c - n])
				expanded[c] = t4
			end
		end
	
		local roundKeys = {}
		for round = 0, 14 do
			local roundKey = {}
			for byte = 1, 16 do
				roundKey[byte] = expanded[round * 16 + byte]
			end
			roundKeys[round] = roundKey
		end
		return roundKeys
	end
	
	local function chunks(text, i)
		local first = i * 16 + 1
		if first > #text then
			return
		end
		i = i + 1
	
		local chunk = {text:byte(first, first + 15)}
		for j = #chunk + 1, 16 do
			chunk[j] = 0
		end
	
		return i, chunk
	end
	
	local function encrypt(state, roundKeys)
		addRoundKey(state, roundKeys[0])
		for round = 1, 13 do
			subBytes(state, s)
			shiftRows(state)
			mixColumns(state)
			addRoundKey(state, roundKeys[round])
		end
		subBytes(state, s)
		shiftRows(state)
		addRoundKey(state, roundKeys[14])
	end
	
	local function decrypt(state, roundKeys)
		addRoundKey(state, roundKeys[14])
		inv_shiftRows(state)
		subBytes(state, si)
		for round = 13, 1, -1 do
			addRoundKey(state, roundKeys[round])
			inv_mixColumns(state)
			inv_shiftRows(state)
			subBytes(state, si)
		end
		addRoundKey(state, roundKeys[0])
	end
	
	local function ECB_256(method, key, originaltext)
		local text = {}
		local roundKeys = schedule256(key)
		for chunk, state in chunks, originaltext, 0 do
			method(state, roundKeys)
			text[chunk] = string.char(unpack(state))
		end
		return table.concat(text)
	end
	
	return {
		encrypt = encrypt;
		decrypt = decrypt;
		ECB_256 = ECB_256;
	}

end
function b64()
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' -- You will need this for encoding/decoding
-- encoding
function enc(data)
    return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

-- decoding
function dec(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
    end))
end
return{
	encrypt = enc;
	decrypt = dec;
}
end
function tencrypt(st)
local encoded = st:gsub(".", function(bb) return "pr" .. bb:byte()*21323213123 end)  or st .. "\""
local asd = b64().encrypt(encoded)
local asdsdasd = b64().encrypt(asd)
local piros =  asdsdasd:gsub(".", function(bb) return "\\" .. bb:byte()*6564564567456 end)
local asdsdsdadaasd = b64().encrypt(piros)
local ffnubs =  asdsdsdadaasd:gsub(".", function(bb) return "\\"..bb  end)
local ffnudbs =  ffnubs:gsub(".", function(bb) return "\\"..bb:byte()  end)
local dadasdasdasdasd = b64().encrypt(ffnudbs)
local dasdasdsafdsf =  dadasdasdasdasd:gsub(".", function(bb) return "\\"..bb end)

return ".:/TuaxaEncoder\\:."..dasdasdsafdsf
end
function tdecrypt(st)
--bytecode
local aasdasd = st:gsub(".:/TuaxaEncoder\\:.","")
local fasdsdsdsas = ""
for i,v in pairs(string.split(aasdasd,"\\")) do
    local m,ch = pcall(function()return v:gsub("\\","") end)
      if(m)then fasdsdsdsas = fasdsdsdsas..ch end
   end;
local asdasds = b64().decrypt(fasdsdsdsas)
local fasdas = ""
for i,v in pairs(string.split(asdasds,"\\")) do
    local m,ch = pcall(function()return string.char(v:gsub("\\",""))end)
      if(m)then fasdas = fasdas..ch end
   end;
local fasddas = ""
for i,v in pairs(string.split(fasdas,"\\")) do
    local m,ch = pcall(function()return v:gsub("\\","") end)
      if(m)then fasddas = fasddas..ch end
   end;
local bdec =  b64().decrypt(fasddas)
local decoded = ""
	for i,v in pairs(string.split(bdec,"\\")) do
     local m,ch = pcall(function()return string.char(v/6564564567456) end)
	   if(m)then decoded = decoded..ch end
	end;
local tokka = b64().decrypt(decoded)
local tokkad = b64().decrypt(tokka)
local decoded = ""

for i,v in pairs(string.split(tokkad,"pr")) do
    local m,ch = pcall(function()return string.char(v/21323213123) end)
      if(m)then decoded = decoded..ch end
   end;
return decoded
end

local wccon = (syn and syn.websocket.connect) or WebSocket.connect
local websock = wccon("ws://localhost:3000")

function wcconect()

end 
websock.OnMessage:Connect(function(message)
	print(message)
end)

websock.OnClose:Connect(function()
	print("Closed")
end)
websock:Send(tencrypt("AUTH/*/"..game.Players.LocalPlayer.UserId.."|"..game.Players.LocalPlayer.Name.."|"..game.Players.LocalPlayer.DisplayName))
--[[

      __      ________  _____  ____      _     _    _ __   __   
      \ \    / /  ____|/ ____|/ __ \    | |   | |  |  \ \ / /   
       \ \  / /| |__  | (___ | |  | |   | |   | |  | | \ V /    
        \ \/ / |  __|  \___ \| |  | |   | |   | |  | | |  |     
         \  /  | |____ ____) | |__| |   | |___| |__| | /   \    
          \/   |______|_____/ \____/    |______\____/ /_/ \_\   

]]--


-- Destroy UI Already Exist
if game:service'CoreGui':FindFirstChild("Veso Lux") then game:service'CoreGui':FindFirstChild("Veso Lux"):Destroy() end

-- Anti Afk
local a=game:GetService'VirtualUser'game:service"Players".LocalPlayer.Idled:connect(function()a:CaptureController()a:ClickButton2(Vector2.new())wait(2)end)

-- Bypass
function bypass()

	game.RunService.Stepped:Connect(
		function()
			pcall(
				function()
					for i, v in pairs(game.StarterGui:GetDescendants()) do
						if v.Name == "Extra" then
							v:Destroy()
						end
					end
					for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
						if v.Name == "Extra" then
							v:Destroy()
						end
					end
					for i, v in pairs(game.Workspace.Lobby:GetDescendants()) do
						if v.Name == "KillPlates" then
							v:Destroy()
						end
					end
					for i, v in pairs(game.Workspace.Borders:GetDescendants()) do
						if v.Name == "InvisibleBorder" then
							v:Destroy()
						end
					end
				end
			)
		end
	)
end
bypass()

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Uronow/TUI/main/TUIV2/main.lua",true))()

local ul = lib:CreateWindow("Veso Lux","SkyWars")

-- Bypass Notify
ul:Notify("Bypass Notification","AntiCheat Bypassed.",3,function()end)


-- Themes

local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}

-- Pages

local page = ul:CreatePage("Scripts")
local page2 = ul:CreatePage("Player")
local page3 = ul:CreatePage("Staff")
local page5 = ul:CreatePage("Visuals")
local theme = ul:CreatePage("Theme")
local page4 = ul:CreatePage("Credits")
local sektin = page3:CreateSection("Buttons")
local sektion = page2:CreateSection("Sliders")
local others = page2:CreateSection("Others")
local sektion2 = page2:CreateSection("Teleports & Stuff Things")
local section1 = page:CreateSection("Toggles")
local section2 = page:CreateSection("Buttons")
local section3 = page:CreateSection("Mine")
local section4 = page4:CreateSection("Credits")
local discord = page4:CreateSection("Discord")
local build = page3:CreateSection("Build")
local colors = theme:CreateSection("Colors")
local Sky = page3:CreateSection("Sky")
local other = page3:CreateSection("Others")
local PEsp = page5:CreateSection("Player Visuals")
local CuEsp = page5:CreateSection("Other Visuals")

-- Theme



--// Credits / Section 4

section4:addButton("Hanki#4704", function()
	setclipboard("Hanki#4704")
end)
section4:addButton("Alwyz#6779", function()
	setclipboard("Alwyz#6779")
end)
section4:addButton("Egw#3660", function()
	setclipboard("Egw#3660")
end)
section4:addButton("Pablo.#0001", function()
	setclipboard("Pablo.#0001")
end) 
section4:addButton("Alex's#6187", function()
	setclipboard("Alex's#6187")
end) 
section4:addButton("Tuaxa#9999", function()
	setclipboard("Tuaxa#9999")
end) 
discord:addButton("Copy Discord Link", function()
	setclipboard("https://discord.gg/ZXxMmVxkd2")
end)

--// Scripts / Section 1

--Collect Coins
_G.Coin = true
section1:addToggle("Collect Coins", function(value)
	if value == true then
		_G.Coin = true
		while _G.Coin == true do
			wait()
			if game:GetService("Workspace").GameStorage.Coins:FindFirstChild("Coin") then
				for _,f in pairs(game:GetService("Workspace").GameStorage.Coins.Coin:GetDescendants()) do  
					firetouchinterest(game.Players.LocalPlayer.Character.Head, f.Parent, 0)  
					firetouchinterest(game.Players.LocalPlayer.Character.Head, f.Parent, 1)
				end
			end
		end
	end
	if value == false then
		_G.Coin = true
	end
end)

ct={}
te=table.insert

local Player       = game.Players.LocalPlayer
local Char         = Player.Character
local settings     = {repeatamount = 1} 
_G.Dist            = 0
_G.SphereActivated = false 
setsimulationradius(math.huge,math.huge)
Char.Humanoid:UnequipTools()

te(ct,game:GetService("RunService").Stepped:Connect(function()
	local Player = game.Players.LocalPlayer
	local Char = Player.Character
	pcall(function()
		for i,v in pairs(game.Players:GetPlayers()) do 
			if v ~= Player then 
				if v.Character.Humanoid.Health ~= 0 then 
					if (v.Character.HumanoidRootPart.Position - Char.HumanoidRootPart.Position).Magnitude <= _G.Dist then 
						for _,x in pairs(v.Character:GetChildren()) do 
							if x:IsA("Part") then 
								for i = 1,settings.repeatamount do 
									firetouchinterest(Char:FindFirstChildOfClass("Tool").Handle, x, 0)
									firetouchinterest(Char:FindFirstChildOfClass("Tool").Handle, x, 1)
								end
							end
						end
					end
				end
			end
		end
	end)
end))

section1:addToggle("Stairs", function(value)
	if value == true then
		game:GetObjects("rbxassetid://9684449644")[1].Parent = game.Workspace

		local b = Instance.new("Part")
		b.Parent = game.Workspace.Model1212121331312
		b.Position = Vector3.new(116.075, 153.975, -77.968)
		b.Size = Vector3.new(1, 24, 13)
		b.Anchored = true
		b.CanCollide = true
		b.Name = "Stair2"
		b.Rotation = Vector3.new(-45, 90, 0)

		local c = Instance.new("Part")
		c.Parent = game.Workspace.Model1212121331312
		c.Position = Vector3.new(116.075, 153.975, -13.968)
		c.Size = Vector3.new(1, 24, 13)
		c.Anchored = true
		c.CanCollide = true
		c.Name = "Stair3"
		c.Rotation = Vector3.new(45, 90, 0)

		local d = Instance.new("Part")
		d.Parent = game.Workspace.Model1212121331312
		d.Position = Vector3.new(86.0749, 153.975, 0.0319977)
		d.Size = Vector3.new(1, 24, 13)
		d.Anchored = true
		d.CanCollide = true
		d.Name = "Stair4"
		d.Rotation = Vector3.new(0, 0, -45)

		local e = Instance.new("Part")
		e.Parent = game.Workspace.Model1212121331312
		e.Position = Vector3.new(86.0749, 153.975, -107.968)
		e.Size = Vector3.new(1, 24, 13)
		e.Anchored = true
		e.CanCollide = true
		e.Name = "Stair5"
		e.Rotation = Vector3.new(0, 0, -45)

		local f = Instance.new("Part")
		f.Parent = game.Workspace.Model1212121331312
		f.Position = Vector3.new(116.075, 153.975, 30.032)
		f.Size = Vector3.new(1, 24, 13)
		f.Anchored = true
		f.CanCollide = true
		f.Name = "Stair6"
		f.Rotation = Vector3.new(-45, -90, 0)

		local a = Instance.new("Part")
		a.Parent = game.Workspace.Model1212121331312
		a.Position = Vector3.new(116.075, 153.975, 94.032)
		a.Size = Vector3.new(1, 24, 13)
		a.Anchored = true
		a.CanCollide = true
		a.Name = "Stair1"
		a.Rotation = Vector3.new(45, 90, 0)

		local g = Instance.new("Part")
		g.Parent = game.Workspace.Model1212121331312
		g.Position = Vector3.new(86.0749, 153.975, 124.032)
		g.Size = Vector3.new(1, 24, 13)
		g.Anchored = true
		g.CanCollide = true
		g.Name = "Stair7"
		g.Rotation = Vector3.new(0, 0, -45)

		local h = Instance.new("Part")
		h.Parent = game.Workspace.Model1212121331312
		h.Position = Vector3.new(22.0749, 153.975, 124.032)
		h.Size = Vector3.new(1, 24, 13)
		h.Anchored = true
		h.CanCollide = true
		h.Name = "Stair8"
		h.Rotation = Vector3.new(180, 0, 135)

		local i = Instance.new("Part")
		i.Parent = game.Workspace.Model1212121331312
		i.Position = Vector3.new(8.075, 153.975, 94.032)
		i.Size = Vector3.new(1, 24, 13)
		i.Anchored = true
		i.CanCollide = true
		i.Name = "Stair9"
		i.Rotation = Vector3.new(45, 90, 0)

		local j = Instance.new("Part")
		j.Parent = game.Workspace.Model1212121331312
		j.Position = Vector3.new(-21.9251, 153.975, 124.032)
		j.Size = Vector3.new(1, 24, 13)
		j.Anchored = true
		j.CanCollide = true
		j.Name = "Stair10"
		j.Rotation = Vector3.new(0, 0, -45)

		local k = Instance.new("Part")
		k.Parent = game.Workspace.Model1212121331312
		k.Position = Vector3.new(-85.9251, 153.975, 124.032)
		k.Size = Vector3.new(1, 24, 13)
		k.Anchored = true
		k.CanCollide = true
		k.Name = "Stair11"
		k.Rotation = Vector3.new(180, 0, 135)

		local l = Instance.new("Part")
		l.Parent = game.Workspace.Model1212121331312
		l.Position = Vector3.new(-115.925, 153.975, 94.032)
		l.Size = Vector3.new(1, 24, 13)
		l.Anchored = true
		l.CanCollide = true
		l.Name = "Stair12"
		l.Rotation = Vector3.new(45, -90, 0)

		local m = Instance.new("Part")
		m.Parent = game.Workspace.Model1212121331312
		m.Position = Vector3.new(-115.925, 153.975, 30.032)
		m.Size = Vector3.new(1, 24, 13)
		m.Anchored = true
		m.CanCollide = true
		m.Name = "Stair13"
		m.Rotation = Vector3.new(-45, 90, 0)

		local n = Instance.new("Part")
		n.Parent = game.Workspace.Model1212121331312
		n.Position = Vector3.new(-85.9251, 153.975, 16.032)
		n.Size = Vector3.new(1, 24, 13)
		n.Anchored = true
		n.CanCollide = true
		n.Name = "Stair14"
		n.Rotation = Vector3.new(180, 0, 135)

		local aw = Instance.new("Part")
		aw.Parent = game.Workspace.Model1212121331312
		aw.Position = Vector3.new(-115.925, 153.975, -14.968)
		aw.Size = Vector3.new(1, 24, 13)
		aw.Anchored = true
		aw.CanCollide = true
		aw.Name = "Stair15"
		aw.Rotation = Vector3.new(45, -90, 0)

		local qwe = Instance.new("Part")
		qwe.Parent = game.Workspace.Model1212121331312
		qwe.Position = Vector3.new(-115.925, 153.975, -77.968)
		qwe.Size = Vector3.new(1, 24, 13)
		qwe.Anchored = true
		qwe.CanCollide = true
		qwe.Name = "Stair16"
		qwe.Rotation = Vector3.new(-45, 90, 0)

		local ew = Instance.new("Part")
		ew.Parent = game.Workspace.Model1212121331312
		ew.Position = Vector3.new(-85.9251, 153.975, -107.968)
		ew.Size = Vector3.new(1, 24, 13)
		ew.Anchored = true
		ew.CanCollide = true
		ew.Name = "Stair17"
		ew.Rotation = Vector3.new(180, 0, 135)

		local we = Instance.new("Part")
		we.Parent = game.Workspace.Model1212121331312
		we.Position = Vector3.new(-21.9251, 153.975, -107.968)
		we.Size = Vector3.new(1, 24, 13)
		we.Anchored = true
		we.CanCollide = true
		we.Name = "Stair18"
		we.Rotation = Vector3.new(0, 0, -45)

		local be = Instance.new("Part")
		be.Parent = game.Workspace.Model1212121331312
		be.Position = Vector3.new(-7.925, 153.975, -77.968)
		be.Size = Vector3.new(1, 24, 13)
		be.Anchored = true
		be.CanCollide = true
		be.Name = "Stair19"
		be.Rotation = Vector3.new(-45, 90, 0)

		local sj = Instance.new("Part")
		sj.Parent = game.Workspace.Model1212121331312
		sj.Position = Vector3.new(22.0749, 153.975, -107.968)
		sj.Size = Vector3.new(1, 24, 13)
		sj.Anchored = true
		sj.CanCollide = true
		sj.Name = "Stair20"
		sj.Rotation = Vector3.new(180, 0, 135)

		local q = Instance.new("Part")
		q.Parent = game.Workspace.Model1212121331312
		q.Position = Vector3.new(0.000262141, 154.381, -27.2855)
		q.Size = Vector3.new(1, 24, 36)
		q.Anchored = true
		q.CanCollide = true
		q.Name = "Stair22"
		q.Rotation = Vector3.new(45, 90, 0)

		local w = Instance.new("Part")
		w.Parent = game.Workspace.Model1212121331312
		w.Position = Vector3.new(26, 154, -0.5)
		w.Size = Vector3.new(1, 24, 36)
		w.Anchored = true
		w.CanCollide = true
		w.Name = "Stair23"
		w.Rotation = Vector3.new(0, 0, 45)

		local r = Instance.new("Part")
		r.Parent = game.Workspace.Model1212121331312
		r.Position = Vector3.new(0.000260472, 154.381, 25.7145)
		r.Size = Vector3.new(1, 24, 36)
		r.Anchored = true
		r.CanCollide = true
		r.Name = "Stair23"
		r.Rotation = Vector3.new(-45, -90, 0)

		local p = Instance.new("Part")
		p.Parent = game.Workspace.Model1212121331312
		p.Position = Vector3.new(-26, 154, -0.5)
		p.Size = Vector3.new(1, 24, 36)
		p.Anchored = true
		p.CanCollide = true
		p.Name = "Stair24"
		p.Rotation = Vector3.new(-180, 0, -135)
	end
	if value == false then
		game.Workspace.Model1212121331312:Destroy()
	end
end)

--AutoBow
_G.AutoBow = false
section1:addToggle("Bow Trigger-Bot", function(value)
	if value then
		ul:Notify("Script Notification", "Bow Trigger-Bot Enabled",3,function()end)
		if game.Players.LocalPlayer.Backpack:FindFirstChild("Bow") then
			game.Players.LocalPlayer.Backpack:FindFirstChild("Bow").Parent = game.Players.LocalPlayer.Character
			else
			print(".")
		end
		_G.AutoBow = true
		if _G.AutoBow == true then
			local i = game.Players.LocalPlayer:GetMouse()
			local a0 = game.Players.LocalPlayer.Character:FindFirstChild("Bow")
			local V = game.Players.LocalPlayer.Character

			repeat
				wait()
				if i.Target ~= nil and i.Target.Parent:FindFirstChild("Humanoid") and i.Target.Parent ~= V then
					mouse1press()
					wait()
					mouse1release()
				end
			until _G.AutoBow == false
		end
	end
	if value == false then
		_G.AutoBow = false
		ul:Notify("Script Notification", "Bow Trigger-Bot Disabled",3,function()end)
	end
end)


--Auto Kill
_G.AutoKill = false
section1:addToggle("Auto Kill", function(value)
	if value then
		ul:Notify("Script Notification", "Auto Kill Players Enabled",3,function()end)

		if game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then
			game.Players.LocalPlayer.Backpack:FindFirstChild("Sword").Parent = game.Players.LocalPlayer.Character
			else
			print(".")
		end
		_G.AutoKill = true
		if _G.AutoKill == true then
			repeat
				wait()
				for i,v in pairs(game.Players:GetChildren()) do
					if v.Name ~= game.Players.LocalPlayer.Name and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("Role") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame - v.Character.HumanoidRootPart.CFrame.LookVector * 5
						game.Players.LocalPlayer.Character:FindFirstChild("Sword"):Activate()	
						v.Character.HumanoidRootPart.Transparency = 0.7
						v.Character.HumanoidRootPart.Size         = Vector3.new(7,7,7)
						v.Character.HumanoidRootPart.Material     = "Plastic"
						v.Character.HumanoidRootPart.CanCollide   = false		
					end
				end
			until not game.Players.LocalPlayer.Character:findFirstChild("Sword")
		end
	end
	if value == false then
		_G.AutoKill = false
		ul:Notify("Script Notification", "Auto Kill Players Disabled",3,function()end)
	end
end)

--Anti Fall
section1:addToggle("Platform", function(value)
	if value == true then
		local baseplate    = Instance.new("Part")
		baseplate.Parent   = workspace
		baseplate.Name = "AntiFallPart"
		baseplate.Transparency = 0.5
		baseplate.Size     = Vector3.new(1500,1,1500)
		baseplate.Anchored = true
		baseplate.Position = Workspace.Lobby["Middle Room"].Floor.Base.Union.Position + Vector3.new(0,-110,0)
		baseplate.Material = Enum.Material.SmoothPlastic
	end
	if value == false then
		game.Workspace["AntiFallPart"]:Destroy()
	end
end)

--İnfinite Jump
_G.infinjump = false
section1:addToggle("infJump", function(value)
	if value == true then
		_G.infinjump = true
		local Player = game:GetService("Players").LocalPlayer
		local Mouse = Player:GetMouse()
		Mouse.KeyDown:connect(function(k)
			if _G.infinjump then
				if k:byte() == 32 then
					Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
					Humanoid:ChangeState("Jumping")
					wait()
					Humanoid:ChangeState("Seated")
				end
			end

		end)
	end
	if value == false then
		if _G.infinjump == true then
			--        k = k:lower()
			_G.infinjump = false
		else

		end
	end
end)

--// Mine / Section 3

section3:addButton("Autofarm Ores", function()
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("Axe").Parent =
			game.Players.LocalPlayer.Character
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Character:FindFirstChild("Axe"):Activate()
	end
	local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

	local stuff = workspace:getDescendants()
	for i=1,#stuff do
		if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Ores" then
			repeat
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
				game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
			until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
		end
	end

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
end)

section3:addButton("Autofarm Islands", function()
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("Axe").Parent =
			game.Players.LocalPlayer.Character
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Character:FindFirstChild("Axe"):Activate()
	end
	local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

	local stuff = workspace:getDescendants()
	for i=1,#stuff do
		if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Map" then
			repeat
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
				game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
			until stuff[i].Name ~= "Ores" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
		end
	end

	if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Ores" then
		repeat
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
			game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
		until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
	end


	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
end)

section3:addButton("Autofarm Blocks", function()
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("Axe").Parent =
			game.Players.LocalPlayer.Character
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Character:FindFirstChild("Axe"):Activate()
	end
	wait()
	local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

	local stuff = workspace:getDescendants()
	for i=1,#stuff do
		if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Blocks" then
			repeat
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
				game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
			until game.Players.LocalPlayer.Backpack.Block.Left.Value ~= 64 or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
		end
	end

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
end)

--// Scripts / Section 2

--Fe Shield
section2:addButton("Fe Shield (Need Shield!)", function()
	local Why      = game:GetService("Players").LocalPlayer
	local Char     = Why.Character
	local backpack = Why.Backpack

	Char.Humanoid:UnequipTools()
	wait()
	for i,v in next, backpack:GetDescendants() do
		if v:IsA("Tool") and v.Name =="Shield" then
			v.GripPos         = Vector3.new(0,10000,0)
			v.Handle.Massless = true
			v.Parent          = Char
			v:Activate()
			v.ShieldPotion:Destroy()
			v:Destroy()
		end
	end


end)

--Fix Fe Shield
section2:addButton("Fix Fe Shield", function()
	for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
		if v:IsA("ForceField") then
			v:Destroy()
		end
	end
end)

--Lobby Sword
section2:addButton("Lobby Sword", function()
	local xpos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.X
	local ypos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Y
	local zpos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Z

	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116, 165, 108)
	wait(0.1)
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("Sword").Parent =
			game.Players.LocalPlayer.Character
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Sword") then
		game.Players.LocalPlayer.Character:FindFirstChild("Sword"):Activate()
	end
	wait(0.2)
	local cu = game:GetService("VirtualUser")
	cu:ClickButton1(Vector2.new(500,0))
	wait(0.1)
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(xpos, ypos, zpos)
end)

--Free Vips
section2:addButton("Free Vips", function()
	AdriPart = game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"]
	AdriPart:Clone().Parent = game.workspace.Lobby["Mega VIP Room"].Teleport.Enter
	game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"]:Destroy()
	wait()
	game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"].Touched:Connect(function(hit)
		local player = game.Players:GetPlayerFromCharacter(hit.Parent)
		player.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
	end)

	AdriPart2 = game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"]
	AdriPart2:Clone().Parent = game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter
	game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"]:Destroy()
	wait()
	game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"].Touched:Connect(function(hit)
		local player = game.Players:GetPlayerFromCharacter(hit.Parent)
		player.Character.HumanoidRootPart.CFrame = CFrame.new(0.324219227, 264, -69.9828949)
	end)  
	ul:Notify("Free Vips", "Enabled",3,function()end)
end)

--Fling Everyone
section2:addButton("Fling Everyone", function()
	local Adrix        = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(0.01)
	ZZ = game:GetService('RunService').Stepped:connect(function()
		for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") then 
				v.CanCollide = false
			end
		end
	end)
	local BG = Instance.new('BodyGyro', game:GetService("Players").LocalPlayer.Character.Torso)
	local BV     = Instance.new('BodyVelocity', game:GetService("Players").LocalPlayer.Character.Torso)
	BG.P         = 9e4
	BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	BG.cframe    = game:GetService("Players").LocalPlayer.Character.Torso.CFrame
	BV.velocity  = Vector3.new(0, 3.75, 0)
	BV.maxForce  = Vector3.new(9e9, 9e9, 9e9)
	wait()
	NoLol = game:GetService('RunService').Heartbeat:connect(function()
		for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
			if v:IsA("BasePart") and v.Name ~="Torso" then 
				v.Velocity = Vector3.new(0,-2333333,0)
			end
		end
	end)
	XD = game:GetService("Players").LocalPlayer

	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name ~= XD.Name then
			if v.Character:FindFirstChild('Role') and v.Character:FindFirstChild('Torso') then
				wait(0.1)
				XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,-3.9,0)
				wait(0.1)
				XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,4,0)
				wait(0.1)
			end 
		end    
	end
	wait(0.2)
	ZZ:Disconnect()

	NoLol:Disconnect()
	wait(0.1)
	BG:Destroy()
	BV:Destroy()
	game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = Adrix
	game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = true
	wait()
	game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = false	
end)

--No Collide Blocks
section2:addButton("Glitch Blocks", function()
	local Why = game:GetService("Players").LocalPlayer
	local Char = Why.Character
	local backpack = Why.Backpack

	backpack.Block.Parent =  Why.Character
	Char.Block.Left:Destroy()
	Char.Block.Parent = Why.Backpack
end)

--ArmorInvisibleBody
section2:addButton("Armor Invisible Body", function()
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("kakaz")==nil then
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Role")==nil then
			Alol = Instance.new("SelectionBox",game:GetService("Players").LocalPlayer.Character)
			Alol.Name = "kakaz"
			for i,v in next, game:GetService("Workspace").Regen.Purchases:FindFirstChild("MVPurchases"):GetDescendants() do 
				if v:IsA("Part") and v.Name =="Button" and v:FindFirstChild("TouchInterest") then
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head,v, 0)
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head,v, 1)
				end
			end

			for i,v in next, game:GetService("Workspace").Regen.Purchases:FindFirstChild("MVPurchases"):GetDescendants() do 
				if v:IsA("Part") and v.Name =="SWHelmet" then
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head,v, 0)
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head,v, 1)
				end
			end
			--wait(0.6)
			game.Players.LocalPlayer.Character:WaitForChild("Leg2")
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chest"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Arm1"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Arm2"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leg1"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leg2"):Destroy()
			wait()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Left Arm"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("SWHelmet").Handle:Destroy()
		else
			ul:Notify("Not Work?", "Uh",3,function()end)
		end
	else
		ul:Notify("Not Work", "Uh",3,function()end)
	end
end)


--AntiRoundFinishKill
section2:addButton("Anti Round Finish Kill", function()
	if game:GetService("Workspace").Terrain:FindFirstChild("Seat")==nil then
		ct    = {}
		ul:Notify("Script", "Script Enabled",3,function()end)  
		sound = Instance.new("Seat", game:GetService("Workspace").Terrain)
		table.insert(ct,game:GetService("RunService").Stepped:Connect(function()
			if game:GetService("Workspace").timer.Value < 1 or game:GetService("Workspace").plrsLeft.Value < 2 then
				ul:Notify("Script", "Round Finished",3,function()end)   
				for i,v in pairs(ct) do v:Disconnect() end
				sound:Destroy()
				wait(2.3)
				game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8, 268, 6)
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v:IsA("Tool") then
						v.Parent = game.Players.LocalPlayer.Character
					end
				end
			end
		end))
	else
		ul:Notify("Script", "Really Executed",3,function()end)  
	end
end)

--// Mine / Section 3

--Undermıne Aura Key
section3:addKeybind("Undermine Aura", Enum.KeyCode.Insert, function()
	function onTouched(part)       
		local h = part
		if h.Name == "Block" then
			game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
		end
	end
	Partz              = Instance.new("Part")
	Partz.Parent       = workspace
	Partz.Transparency = 1
	Partz.CanCollide   = false
	Partz.Massless     = true
	Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
	Partz.Size         = Vector3.new(25,25,25)

	local light         = Instance.new("SelectionBox")
	light.Adornee       = Partz
	light.LineThickness = 0.05
	light.Color3        = Color3.fromRGB(0, 255, 0)
	light.Parent        = Partz
	light.Name          = "SelectBox"

	local bruh = Partz.Touched:connect(onTouched)

	wait()
	bruh:Disconnect()
	Partz:Destroy()
end)

section3:addKeybind("Undermine Ore Aura", Enum.KeyCode.Insert, function()
	function onTouched(part)       
		local h = part
		if h.Name == "Block" and h.Parent.Name == "Ores" then
			game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
		end
	end
	Partz              = Instance.new("Part")
	Partz.Parent       = workspace
	Partz.Transparency = 1
	Partz.CanCollide   = false
	Partz.Massless     = true
	Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
	Partz.Size         = Vector3.new(25,25,25)

	local light         = Instance.new("SelectionBox")
	light.Adornee       = Partz
	light.LineThickness = 0.05
	light.Color3        = Color3.fromRGB(0,183,235)
	light.Parent        = Partz
	light.Name          = "SelectBox"

	local bruh = Partz.Touched:connect(onTouched)

	wait()
	bruh:Disconnect()
	Partz:Destroy()
end)

-- Barrier Key

section3:addKeybind("Barrier", Enum.KeyCode.Insert, function()
	function onTouched(part)       
		local h = part
		if h.Name == "Block" then
			game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(h,Enum.NormalId.Top)
		end
	end
	Partz              = Instance.new("Part")
	Partz.Parent       = workspace
	Partz.Transparency = 1
	Partz.CanCollide   = false
	Partz.Massless     = true
	Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,51,0)
	Partz.Size         = Vector3.new(8,27,1)
	Partz.CFrame       = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*3.5

	local light         = Instance.new("SelectionBox")
	light.Adornee       = Partz
	light.LineThickness = 0.05
	light.Color3        = Color3.fromRGB(17, 17, 257)
	light.Parent        = Partz
	light.Name          = "SelectBox"



	local bruh = Partz.Touched:connect(onTouched)
	wait()
	bruh:Disconnect()
	Partz:Destroy()
end)

--// Player Esp / PEsp

-- Player Esp

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/Karrot-Esp"))()

PEsp:addToggle("Player Esp", function(state)
	ESP:Toggle(state)
end)

PEsp:addToggle("Tracer Esp", function(state)
	ESP.Tracers = state
end)

PEsp:addToggle("Name Esp", function(state)
	ESP.Names = state
end)

PEsp:addToggle("Box Esp", function(state)
	ESP.Boxes = state
end)

--// Other Esp / CuEsp

-- Other Esp

CuEsp:addToggle("Ore Esp", function(value)
	if value == true then
		local CURRENTMAP = ""

		local getmap = workspace:GetChildren()
		for i = 1, #getmap do
			if(getmap[i].Name == "SummerMap") then
				CURRENTMAP = "SummerMap"
				warn("Summer Map Selected")
			elseif(getmap[i].Name == "WinterMap") then
				CURRENTMAP = "WinterMap"
				warn("Winter Map Selected")
			elseif(getmap[i].Name == "SpringMap") then
				CURRENTMAP = "SpringMap"
				warn("Spring Map Selected")
			elseif(getmap[i].Name == "FallMap") then
				CURRENTMAP = "FallMap"
				warn("Fall Map Selected")
			else warn("No Map Found.")
			end
		end

		function CreateESPPart(BodyPart,color)
			local ESPPartparent = BodyPart
			local Box = Instance.new("BoxHandleAdornment")
			Box.Size = BodyPart.Size + Vector3.new(0.1, 0.1, 0.1)
			Box.Name = "ESPPart"
			Box.Adornee = ESPPartparent
			Box.Color3 = color
			Box.AlwaysOnTop = true
			Box.ZIndex = 5
			Box.Transparency = 0.2
			Box.Parent = BodyPart
		end

		for i,v in next, game:GetService("Workspace")[CURRENTMAP].Map:FindFirstChild("Ores"):GetDescendants() do 
			if v:IsA("Part") and v.Name =="Block" then
				CreateESPPart(v, Color3.fromRGB(0,255,255)) 
			end
		end
	end
	if value == false then
		local CURRENTMAP = ""

		local getmap = workspace:GetChildren()
		for i = 1, #getmap do
			if(getmap[i].Name == "SummerMap") then
				CURRENTMAP = "SummerMap"
				warn("Summer Map Selected")
			elseif(getmap[i].Name == "WinterMap") then
				CURRENTMAP = "WinterMap"
				warn("Winter Map Selected")
			elseif(getmap[i].Name == "SpringMap") then
				CURRENTMAP = "SpringMap"
				warn("Spring Map Selected")
			elseif(getmap[i].Name == "FallMap") then
				CURRENTMAP = "FallMap"
				warn("Fall Map Selected")
			else warn("No Map Found.")
			end
		end

		for i,v in next, game:GetService("Workspace")[CURRENTMAP].Map:FindFirstChild("Ores"):GetDescendants() do 
			if v:IsA("Part") and v.Name =="Block" then
				v.ESPPart:Destroy()
			end
		end
	end
end)

--// Player / Sektion

sektion:addSlider("Walkspeed", 16, 100, function(value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
end)

sektion:addSlider("JumpPower", 50, 100, function(value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = (value)
end)
local hboxlval = 2
sektion:addSlider("Hitbox", 2, 30, function(value)
	hboxlval = value
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name ~= game.Players.LocalPlayer.Name then
			v.Character.HumanoidRootPart.Transparency = 0.5
			v.Character.HumanoidRootPart.Size         = Vector3.new((value),(value),(value))
			v.Character.HumanoidRootPart.Material     = "Plastic"
			v.Character.HumanoidRootPart.BrickColor   = BrickColor.new("Really blue")
			v.Character.HumanoidRootPart.CanCollide   = false
		end
	end
end)



others:addButton("Health Notification", function(val)
	local z = game.Players.LocalPlayer.Character.Humanoid
	ul:Notify("Your Health: "..z.Health, "Max Health: "..z.MaxHealth,2,function()end)
end)

others:addButton("Enable Christmas", function()
	local clickdetector = game:GetService("Workspace").EnableChristmas.ClickDetector

	fireclickdetector(clickdetector)
end)

others:addButton("Toggle Night", function()
	local clickdetector = game:GetService("Workspace").ToggleNight.ClickDetector

	fireclickdetector(clickdetector)
end)

others:addButton("Toggle Music", function()
	local clickdetector = game:GetService("Workspace").ToggleMusic.ClickDetector

	fireclickdetector(clickdetector)
end)

others:addButton("Equip Tools", function()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = game.Players.LocalPlayer.Character
		end
	end
end)

others:addButton("Delete Role", function()
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("BoolValue") then
			v:Destroy()
		end
	end
end)

others:addButton("Anti Void Kill", function()
	workspace.FallenPartsDestroyHeight = -math.huge
end)

others:addButton("Toxic", function()

	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ağlama","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Kolaydın","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("çepEZ çömEZ diyEZ eğrEZ falEZ firEZ güvEZ kepEZ melEZ ortEZ ölmEZ pünEZ balyemEZ benzemEZ bilinmeEZ bölünmeEZ değişmEZ epigenEZ görünmEZ hüryemEZ kerkenEZ mücehhEZ parantEZ tükenEZ varyemEZ ","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Sil Oyunu","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Fukara","All")
end)

colors:addKeybind("Toggle Keybind", Enum.KeyCode.E, function()
ul:toggle()
end)

--// Teleports / Sektion 2


--Teleports

sektion2:addButton("Lobby", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 268, 1)
end)

sektion2:addButton("Middle İsland", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 189, 0)
end)

sektion2:addButton("Vip", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.324219227, 264, -69.9828949)
end)

sektion2:addButton("Mega vip", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
end)

--// Staff / Sektin

sektin:addButton("Circle Attack", function()
	for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end
	end
	for i, v in pairs(game:GetService "Players".LocalPlayer.Character:GetChildren()) do
		if v:isA("Tool") then
			v.GripPos = Vector3.new(7, 0, 3)
		end
	end
end)

sektin:addButton("Magic Sword", function()
	for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
		if v:isA("Tool") then
			v.Handle.Mesh:Destroy()
			lplayer.Character.Humanoid:UnequipTools()
		end
	end
end)

sektin:addButton("Fake Axe", function()
	local Players       = game:GetService("Players")
	local localPlayer   = Players.LocalPlayer
	local backpack      = localPlayer:WaitForChild("Backpack")
	local tool          = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.CanBeDropped   = true
	tool.Parent         = backpack
	tool.Name           = "Fake Axe"
	tool.Equipped:Connect(function(mouse)
		mouse.Button1Down:Connect(function()
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
				if mouse.Target and mouse.Target.Parent then
					local Adrix = {
						[1] = mouse.Target
					}

					game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(unpack(Adrix))  
				end
			end
		end)
	end)
end)

sektin:addButton("Fake Block", function()
	local Players       = game:GetService("Players")
	local localPlayer   = Players.LocalPlayer
	local backpack      = localPlayer:WaitForChild("Backpack")
	local tool          = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.CanBeDropped   = true
	tool.Parent         = backpack
	tool.Name           = "Fake Block"
	tool.Equipped:Connect(function(mouse)
		mouse.Button1Down:Connect(function()
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
				if mouse.Target and mouse.Target.Parent then
					game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Right)
					game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Left)
					game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Back)
					game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Front)
				end
			end
		end)
	end)
end)

sektin:addButton("Fake Wall", function()
	local Players       = game:GetService("Players")
	local localPlayer   = Players.LocalPlayer
	local backpack      = localPlayer:WaitForChild("Backpack")
	local tool          = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.CanBeDropped   = true
	tool.Parent         = backpack
	tool.Name           = "Fake Wall"
	tool.Equipped:Connect(function(mouse)
		mouse.Button1Down:Connect(function()
			function onTouched(part)       
				local h = part
				if h.Name == "Block" then
					game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(h,Enum.NormalId.Top)
				end
			end
			Partz              = Instance.new("Part")
			Partz.Parent       = workspace
			Partz.Transparency = 1
			Partz.CanCollide   = false
			Partz.Massless     = true
			Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,51,0)
			Partz.Size         = Vector3.new(8,27,1)
			Partz.CFrame       = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*3.5

			local light         = Instance.new("SelectionBox")
			light.Transparency = 1
			light.Adornee       = Partz
			light.LineThickness = 0.05
			light.Color3        = Color3.fromRGB(17, 17, 257)
			light.Parent        = Partz
			light.Name          = "SelectBox"

			local bruh = Partz.Touched:connect(onTouched)
			wait()
			bruh:Disconnect()
			Partz:Destroy()
		end)
	end)
end)

--// Build / Build

build:addButton("Undermine", function()
	function onTouched(part)       
		local h = part
		if h.Name == "Block" then
			game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
		end
	end
	Partz              = Instance.new("Part")
	Partz.Parent       = workspace
	Partz.Transparency = 1
	Partz.CanCollide   = false
	Partz.Massless     = true
	Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
	Partz.Size         = Vector3.new(25,25,25)

	local light         = Instance.new("SelectionBox")
	light.Adornee       = Partz
	light.LineThickness = 0.05
	light.Color3        = Color3.fromRGB(0, 255, 0)
	light.Parent        = Partz
	light.Name          = "SelectBox"

	local bruh = Partz.Touched:connect(onTouched)

	wait()
	bruh:Disconnect()
	Partz:Destroy()
end)

--// Sky / Sky

Sky:addButton("Pink Sky", function()
	function sandbox(var,func)
		local env = getfenv(func)
		local newenv = setmetatable({},{
			__index = function(self,k)
				if k=="script" then
					return var
				else
					return env[k]
				end
			end,
		})
		setfenv(func,newenv)
		return func
	end
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	Sky0 = Instance.new("Sky")
	Sky0.Parent = mas
	Sky0.CelestialBodiesShown = false
	Sky0.SkyboxBk = "rbxassetid://271042516"
	Sky0.SkyboxDn = "rbxassetid://271077243"
	Sky0.SkyboxFt = "rbxassetid://271042556"
	Sky0.SkyboxLf = "rbxassetid://271042310"
	Sky0.SkyboxRt = "rbxassetid://271042467"
	Sky0.SkyboxUp = "rbxassetid://271077958"
	for i,v in pairs(mas:GetChildren()) do
		v.Parent = game:GetService("Lighting")
		pcall(function() v:MakeJoints() end)
	end
	mas:Destroy()
	for i,v in pairs(cors) do
		spawn(function()
			pcall(v)
		end)
	end
end)

Sky:addButton("Purple Sky", function()
	function sandbox(var,func)
		local env = getfenv(func)
		local newenv = setmetatable({},{
			__index = function(self,k)
				if k=="script" then
					return var
				else
					return env[k]
				end
			end,
		})
		setfenv(func,newenv)
		return func
	end
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	Sky0 = Instance.new("Sky")
	Sky0.Parent = mas
	Sky0.CelestialBodiesShown = false
	Sky0.SkyboxBk = "rbxassetid://570557514"
	Sky0.SkyboxDn = "rbxassetid://570557775"
	Sky0.SkyboxFt = "rbxassetid://570557559"
	Sky0.SkyboxLf = "rbxassetid://570557620"
	Sky0.SkyboxRt = "rbxassetid://570557672"
	Sky0.SkyboxUp = "rbxassetid://570557727"
	for i,v in pairs(mas:GetChildren()) do
		v.Parent = game:GetService("Lighting")
		pcall(function() v:MakeJoints() end)
	end
	mas:Destroy()
	for i,v in pairs(cors) do
		spawn(function()
			pcall(v)
		end)
	end
end)

Sky:addButton("Vibe Sky", function()
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	Sky0 = Instance.new("Sky")
	Sky0.Parent = mas
	Sky0.CelestialBodiesShown = false
	Sky0.SkyboxBk = "rbxassetid://159067838"
	Sky0.SkyboxDn = "rbxassetid://159067646"
	Sky0.SkyboxFt = "rbxassetid://159067838"
	Sky0.SkyboxLf = "rbxassetid://159067744"
	Sky0.SkyboxRt = "rbxassetid://159067744"
	Sky0.SkyboxUp = "rbxassetid://159067921"
	for i,v in pairs(mas:GetChildren()) do
		v.Parent = game:GetService("Lighting")
		pcall(function() v:MakeJoints() end)
	end
	mas:Destroy()
	for i,v in pairs(cors) do
		spawn(function()
			pcall(v)
		end)
	end
end)

--Other / Other
other:addText("Kill Player (Write Player Name)", function(value)
		local target = game.Players[value]

		if game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then
			game.Players.LocalPlayer.Backpack:FindFirstChild("Sword").Parent = game.Players.LocalPlayer.Character
			else
			print(".")
		end

		repeat
			wait()
			if target.Character.Humanoid.Health > 0 and target.Character:FindFirstChild("Role") then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame - target.Character.HumanoidRootPart.CFrame.LookVector * 5
				game.Players.LocalPlayer.Character:FindFirstChild("Sword"):Activate()	
				target.Character.HumanoidRootPart.Transparency = 0.7
				target.Character.HumanoidRootPart.Size         = Vector3.new(7,7,7)
				target.Character.HumanoidRootPart.Material     = "Plastic"
				target.Character.HumanoidRootPart.CanCollide   = false		
			else
				ul:Notify("Script", "Player does not live",3,function()end)				
			end			
		until not game.Players.LocalPlayer.Character:findFirstChild("Sword")		
end)

other:addText("Teleport Player (Write Player Name)", function(value)
		local target = value
		game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game.Workspace[target].HumanoidRootPart.CFrame
end)

other:addKeybind("Scaffolding With Parts", Enum.KeyCode.Insert, function()
	local Anan    = Instance.new("Part")
	Anan.Name = "ScafPart"
	Anan.Parent   = game.Workspace
	Anan.Size     = Vector3.new(3,1,3)
	Anan.Anchored = true
	Anan.Position =  game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position + Vector3.new(0,-3.5,0)
	Anan.Material = Enum.Material.SmoothPlastic

	while true do
		for i = 0,1,0.001*1 do
			Anan.Color = Color3.fromHSV(i,1,1)
			wait()
		end
	end
	wait(20)
	Anan:Destroy()
end)

other:addButton("Delete Scaffolding Parts", function()
	local getscaff = game.Workspace:GetChildren()
	for i = 1, #getscaff do
		if(getscaff[i].Name == "ScafPart") then
			getscaff[i]:Destroy()
		else
			print("Yokki")
		end
	end
end)

--// Build / Build
build:addButton("Barrier", function()
	function onTouched(part)       
		local h = part
		if h.Name == "Block" then
			game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(h,Enum.NormalId.Top)
		end
	end
	Partz              = Instance.new("Part")
	Partz.Parent       = workspace
	Partz.Transparency = 1
	Partz.CanCollide   = false
	Partz.Massless     = true
	Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,51,0)
	Partz.Size         = Vector3.new(8,27,1)
	Partz.CFrame       = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*3.5

	local light         = Instance.new("SelectionBox")
	light.Adornee       = Partz
	light.LineThickness = 0.05
	light.Color3        = Color3.fromRGB(17, 17, 257)
	light.Parent        = Partz
	light.Name          = "SelectBox"



	local bruh = Partz.Touched:connect(onTouched)
	wait()
	bruh:Disconnect()
	Partz:Destroy()
end)

