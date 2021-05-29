function varargout = RassOblPok(varargin)
% RASSOBLPOK M-file for RassOblPok.fig
%      RASSOBLPOK, by itself, creates a new RASSOBLPOK or raises the existing
%      singleton*.
%
%      H = RASSOBLPOK returns the handle to a new RASSOBLPOK or the handle to
%      the existing singleton*.
%
%      RASSOBLPOK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RASSOBLPOK.M with the given input arguments.
%
%      RASSOBLPOK('Property','Value',...) creates a new RASSOBLPOK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RassOblPok_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RassOblPok_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RassOblPok

% Last Modified by GUIDE v2.5 29-May-2021 19:05:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RassOblPok_OpeningFcn, ...
                   'gui_OutputFcn',  @RassOblPok_OutputFcn, ...
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


% --- Executes just before RassOblPok is made visible.
function RassOblPok_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RassOblPok (see VARARGIN)

% Choose default command line output for RassOblPok
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RassOblPok wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RassOblPok_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in na4robpok.
function na4robpok_Callback(hObject, eventdata, handles)
% hObject    handle to na4robpok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
