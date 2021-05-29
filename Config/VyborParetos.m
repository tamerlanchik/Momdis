function varargout = VyborParetos(varargin)
% VYBORPARETOS M-file for VyborParetos.fig
%      VYBORPARETOS, by itself, creates a new VYBORPARETOS or raises the existing
%      singleton*.
%
%      H = VYBORPARETOS returns the handle to a new VYBORPARETOS or the handle to
%      the existing singleton*.
%
%      VYBORPARETOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VYBORPARETOS.M with the given input arguments.
%
%      VYBORPARETOS('Property','Value',...) creates a new VYBORPARETOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VyborParetos_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VyborParetos_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VyborParetos

% Last Modified by GUIDE v2.5 23-Apr-2020 19:35:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VyborParetos_OpeningFcn, ...
                   'gui_OutputFcn',  @VyborParetos_OutputFcn, ...
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


% --- Executes just before VyborParetos is made visible.
function VyborParetos_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VyborParetos (see VARARGIN)

% Choose default command line output for VyborParetos
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VyborParetos wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = VyborParetos_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in mparset0.
function mparset0_Callback(hObject, eventdata, handles)
% hObject    handle to mparset0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of mparset0
set(handles.mparset0, 'Value', 1);
set(handles.mparset1, 'Value', 0);
set(handles.mparset2, 'Value', 0);
set(handles.mparset3, 'Value', 0);
numparetset=0
save data_tipmetnp numparetset
set(handles.stparetset, 'Enable', 'On');


% --- Executes on button press in mparset1.
function mparset1_Callback(hObject, eventdata, handles)
% hObject    handle to mparset1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of mparset1
set(handles.mparset0, 'Value', 0);
set(handles.mparset1, 'Value', 1);
set(handles.mparset2, 'Value', 0);
set(handles.mparset3, 'Value', 0);
numparetset=1
save data_tipmetnp numparetset
set(handles.stparetset, 'Enable', 'On');


% --- Executes on button press in stparetset.
function stparetset_Callback(hObject, eventdata, handles)
% hObject    handle to stparetset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in mparset2.
function mparset2_Callback(hObject, eventdata, handles)
% hObject    handle to mparset2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of mparset2
set(handles.mparset0, 'Value', 0);
set(handles.mparset1, 'Value', 0);
set(handles.mparset2, 'Value', 1);
set(handles.mparset3, 'Value', 0);
numparetset=2
save data_tipmetnp numparetset
set(handles.stparetset, 'Enable', 'On');


% --- Executes on button press in mparset3.
function mparset3_Callback(hObject, eventdata, handles)
% hObject    handle to mparset3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of mparset3
set(handles.mparset0, 'Value', 0);
set(handles.mparset1, 'Value', 0);
set(handles.mparset2, 'Value', 0);
set(handles.mparset3, 'Value', 1);
numparetset=3
save data_tipmetnp numparetset
set(handles.stparetset, 'Enable', 'On');
