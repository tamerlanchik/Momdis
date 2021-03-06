function varargout = VyborUKUks(varargin)

% VYBORUKUKS M-file for VyborUKUks.fig
%      VYBORUKUKS, by itself, creates a new VYBORUKUKS or raises the existing
%      singleton*.
%
%      H = VYBORUKUKS returns the handle to a new VYBORUKUKS or the handle to
%      the existing singleton*.
%
%      VYBORUKUKS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VYBORUKUKS.M with the given input arguments.
%
%      VYBORUKUKS('Property','Value',...) creates a new VYBORUKUKS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VyborUKUks_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VyborUKUks_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VyborUKUks

% Last Modified by GUIDE v2.5 14-Feb-2006 00:56:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VyborUKUks_OpeningFcn, ...
                   'gui_OutputFcn',  @VyborUKUks_OutputFcn, ...
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


% --- Executes just before VyborUKUks is made visible.
function VyborUKUks_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VyborUKUks (see VARARGIN)

% Choose default command line output for VyborUKUks
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VyborUKUks wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = VyborUKUks_OutputFcn(hObject, eventdata, handles)
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
numUKUks=1;
save data_tipmetUKUks numUKUks
set(handles.stsirare, 'Enable', 'On');


% --- Executes on button press in naobluku.
function naobluku_Callback(hObject, eventdata, handles)
% hObject    handle to naobluku (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of naobluku
set(handles.naoblclra, 'Value', 0);
set(handles.naobluku, 'Value', 1);
numUKUks=2;
save data_tipmetUKUks numUKUks
set(handles.stsirare, 'Enable', 'On');

% --- Executes on button press in stsirare.
function stsirare_Callback(hObject, eventdata, handles)
% hObject    handle to stsirare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


