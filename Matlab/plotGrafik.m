function varargout = plotGrafik(varargin)
% PLOTGRAFIK MATLAB code for plotGrafik.fig
%      PLOTGRAFIK, by itself, creates a new PLOTGRAFIK or raises the existing
%      singleton*.
%
%      H = PLOTGRAFIK returns the handle to a new PLOTGRAFIK or the handle to
%      the existing singleton*.
%
%      PLOTGRAFIK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLOTGRAFIK.M with the given input arguments.
%
%      PLOTGRAFIK('Property','Value',...) creates a new PLOTGRAFIK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before plotGrafik_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to plotGrafik_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help plotGrafik

% Last Modified by GUIDE v2.5 25-Feb-2020 14:32:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @plotGrafik_OpeningFcn, ...
                   'gui_OutputFcn',  @plotGrafik_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before plotGrafik is made visible.
function plotGrafik_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to plotGrafik (see VARARGIN)
handles.x = -10:10;
y = handles.x.^2;
plot(handles.x,y);title('y = x^2');
% Choose default command line output for plotGrafik
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes plotGrafik wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = plotGrafik_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in vTampil.
function vTampil_Callback(hObject, eventdata, handles)
% hObject    handle to vTampil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = handles.x.^3;
plot(handles.x,y);title('y = x^3');

function vA_Callback(hObject, eventdata, handles)
% hObject    handle to vA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vA as text
%        str2double(get(hObject,'String')) returns contents of vA as a double


% --- Executes during object creation, after setting all properties.
function vA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vB_Callback(hObject, eventdata, handles)
% hObject    handle to vB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vB as text
%        str2double(get(hObject,'String')) returns contents of vB as a double


% --- Executes during object creation, after setting all properties.
function vB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vC_Callback(hObject, eventdata, handles)
% hObject    handle to vC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vC as text
%        str2double(get(hObject,'String')) returns contents of vC as a double


% --- Executes during object creation, after setting all properties.
function vC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vD_Callback(hObject, eventdata, handles)
% hObject    handle to vD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vD as text
%        str2double(get(hObject,'String')) returns contents of vD as a double


% --- Executes during object creation, after setting all properties.
function vD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in vPlot.
function vPlot_Callback(hObject, eventdata, handles)
% hObject    handle to vPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.vA,'string');   
B = get(handles.vB,'string');   
C = get(handles.vC,'string');   
D = get(handles.vD,'string');   
nA = str2double(A);
nB = str2double(B);
nC = str2double(C);
nD = str2double(D);
y = nA*(handles.x.^nB)+nC*handles.x+nD;
plot(handles.x,y);
judul = sprintf('y=%dx^%d+%dx+%d',nA,nB,nC,nD);
title(judul);


