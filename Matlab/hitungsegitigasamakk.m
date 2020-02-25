function varargout = hitungsegitigasamakk(varargin)
% HITUNGSEGITIGASAMAKK MATLAB code for hitungsegitigasamakk.fig
%      HITUNGSEGITIGASAMAKK, by itself, creates a new HITUNGSEGITIGASAMAKK or raises the existing
%      singleton*.
%
%      H = HITUNGSEGITIGASAMAKK returns the handle to a new HITUNGSEGITIGASAMAKK or the handle to
%      the existing singleton*.
%
%      HITUNGSEGITIGASAMAKK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HITUNGSEGITIGASAMAKK.M with the given input arguments.
%
%      HITUNGSEGITIGASAMAKK('Property','Value',...) creates a new HITUNGSEGITIGASAMAKK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before hitungsegitigasamakk_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to hitungsegitigasamakk_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help hitungsegitigasamakk

% Last Modified by GUIDE v2.5 25-Feb-2020 14:11:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @hitungsegitigasamakk_OpeningFcn, ...
                   'gui_OutputFcn',  @hitungsegitigasamakk_OutputFcn, ...
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


% --- Executes just before hitungsegitigasamakk is made visible.
function hitungsegitigasamakk_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to hitungsegitigasamakk (see VARARGIN)

% Choose default command line output for hitungsegitigasamakk
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes hitungsegitigasamakk wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = hitungsegitigasamakk_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function vTinggi_Callback(hObject, eventdata, handles)
% hObject    handle to vTinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vTinggi as text
%        str2double(get(hObject,'String')) returns contents of vTinggi as a double


% --- Executes during object creation, after setting all properties.
function vTinggi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vTinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vAlas_Callback(hObject, eventdata, handles)
% hObject    handle to vAlas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vAlas as text
%        str2double(get(hObject,'String')) returns contents of vAlas as a double


% --- Executes during object creation, after setting all properties.
function vAlas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vAlas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dTinggi = get(handles.vTinggi,'string');
dAlas = get(handles.vAlas,'string');
dSimir = get(handles.vSimir,'string');

if dTinggi=='0'
    nTinggi = sqrt(str2double(dSimir)^2-str2double(dAlas/2)^2);
    
    dKeliling = str2double(dSimir)*2+str2double(dAlas);
    dLuas = (str2double(dAlas)/2)*nTinggi;
    
elseif dAlas=='0'
    nAlas = sqrt(str2double(dSimir)^2-str2double(dTinggi)^2)*2;
    
    dKeliling = str2double(dSimir)*2+nAlas;
    dLuas = nAlas/2*str2double(dTinggi);
    
else
    dMiring = sqrt((str2double(dAlas)/2)^2+str2double(dTinggi)^2);
    
    dKeliling = dMiring*2+str2double(dAlas);
    dLuas = str2double(dAlas)/2*str2double(dTinggi);
end
set(handles.pHasilLuas,'string',dLuas);
set(handles.pHasilKeliling,'string',dKeliling);



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vSimir_Callback(hObject, eventdata, handles)
% hObject    handle to vSimir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vSimir as text
%        str2double(get(hObject,'String')) returns contents of vSimir as a double


% --- Executes during object creation, after setting all properties.
function vSimir_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vSimir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
