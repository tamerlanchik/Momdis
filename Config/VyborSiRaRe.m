function varargout = VyborSiRaRe(varargin)

% VYBORSIRARE M-file for VyborSiRaRe.fig
%      VYBORSIRARE, by itself, creates a new VYBORSIRARE or raises the existing
%      singleton*.
%
%      H = VYBORSIRARE returns the handle to a new VYBORSIRARE or the handle to
%      the existing singleton*.
%
%      VYBORSIRARE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VYBORSIRARE.M with the given input arguments.
%
%      VYBORSIRARE('Property','Value',...) creates a new VYBORSIRARE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VyborSiRaRe_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VyborSiRaRe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VyborSiRaRe

% Last Modified by GUIDE v2.5 27-Apr-2020 10:21:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VyborSiRaRe_OpeningFcn, ...
                   'gui_OutputFcn',  @VyborSiRaRe_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before VyborSiRaRe is made visible.
function VyborSiRaRe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VyborSiRaRe (see VARARGIN)

% Choose default command line output for VyborSiRaRe
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VyborSiRaRe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = VyborSiRaRe_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in naoblclra.
function naoblclra_Callback(hObject, eventdata, handles)
% hObject    handle to naoblclra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of naoblclra
set(handles.naoblclra, 'Value', 1);
set(handles.naobluku, 'Value', 0);
numsirare=0
save data_tipmetnsi numsirare
set(handles.stsirare, 'Enable', 'On');


% --- Executes on button press in naobluku.
function naobluku_Callback(hObject, eventdata, handles)
% hObject    handle to naobluku (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of naobluku
set(handles.naoblclra, 'Value', 0);
set(handles.naobluku, 'Value', 1);
numsirare=1
save data_tipmetnsi numsirare
set(handles.stsirare, 'Enable', 'On');

% --- Executes on button press in stsirare.
function stsirare_Callback(hObject, eventdata, handles)
% hObject    handle to stsirare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
