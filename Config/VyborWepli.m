function varargout = VyborWepli(varargin)

% VYBORWEPLI M-file for VyborWepli.fig
%      VYBORWEPLI, by itself, creates a new VYBORWEPLI or raises the existing
%      singleton*.
%
%      H = VYBORWEPLI returns the handle to a new VYBORWEPLI or the handle to
%      the existing singleton*.
%
%      VYBORWEPLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VYBORWEPLI.M with the given input arguments.
%
%      VYBORWEPLI('Property','Value',...) creates a new VYBORWEPLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VyborWepli_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VyborWepli_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VyborWepli

% Last Modified by GUIDE v2.5 19-Feb-2006 18:28:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VyborWepli_OpeningFcn, ...
                   'gui_OutputFcn',  @VyborWepli_OutputFcn, ...
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


% --- Executes just before VyborWepli is made visible.
function VyborWepli_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VyborWepli (see VARARGIN)

% Choose default command line output for VyborWepli
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VyborWepli wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = VyborWepli_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in nato4new.
function nato4new_Callback(hObject, eventdata, handles)
% hObject    handle to nato4new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of nato4new
set(handles.nato4new, 'Value', 1);
set(handles.nasetNew, 'Value', 0);
numWepli=1
save data_tipmetWepli numWepli
set(handles.stsirare, 'Enable', 'On');


% --- Executes on button press in nasetNew.
function nasetNew_Callback(hObject, eventdata, handles)
% hObject    handle to nasetNew (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of nasetNew
set(handles.nato4new, 'Value', 0);
set(handles.nasetNew, 'Value', 1);
numWepli=2
save data_tipmetWepli numWepli
set(handles.stsirare, 'Enable', 'On');

% --- Executes on button press in stsirare.
function stsirare_Callback(hObject, eventdata, handles)
% hObject    handle to stsirare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


