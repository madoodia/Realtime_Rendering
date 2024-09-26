// --------------------- //
// (C) 2024 madoodia.com //
// --------------------- //

#include <Windows.h>
#include <wrl.h>
#include <d3d12.h>
#include <dxgi1_4.h>
#include <D3Dcompiler.h>
#include <DirectXMath.h>
#include <string>

using Microsoft::WRL::ComPtr;
using namespace DirectX;

// Global Variables for DirectX objects
ComPtr<ID3D12Device> device;
ComPtr<IDXGISwapChain3> swapChain;
ComPtr<ID3D12CommandQueue> commandQueue;
ComPtr<ID3D12DescriptorHeap> rtvHeap;
ComPtr<ID3D12Resource> renderTargets[2];
ComPtr<ID3D12CommandAllocator> commandAllocator;
ComPtr<ID3D12GraphicsCommandList> commandList;
ComPtr<ID3D12Fence> fence;
UINT rtvDescriptorSize;
UINT frameIndex;
HANDLE fenceEvent;
UINT64 fenceValue;