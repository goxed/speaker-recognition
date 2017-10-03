function varargout = record(varargin)
% RECORD Application M-file for record.fig
%    FIG = RECORD launch record GUI.
%    RECORD('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 14-Jun-2002 19:52:16

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
    
    handles.sample_count=1;
    
    handles.user_count=1;
	
    %newfeature{1}{1}='String';

    guidata(fig, handles);

	if nargout > 0
		varargout{1} = fig;
	end

elseif ischar(varargin{1}) % INVOKE NAMED SUBFUNCTION OR CALLBACK

	try
		if (nargout)
			[varargout{1:nargout}] = feval(varargin{:}); % FEVAL switchyard
		else
			feval(varargin{:}); % FEVAL switchyard
		end
	catch
		disp(lasterr);
	end

end


%| ABOUT CALLBACKS:
%| GUIDE automatically appends subfunction prototypes to this file, and 
%| sets objects' callback properties to call them through the FEVAL 
%| switchyard above. This comment describes that mechanism.
%|
%| Each callback subfunction declaration has the following form:
%| <SUBFUNCTION_NAME>(H, EVENTDATA, HANDLES, VARARGIN)
%|
%| The subfunction name is composed using the object's Tag and the 
%| callback type separated by '_', e.g. 'slider2_Callback',
%| 'figure1_CloseRequestFcn', 'axis1_ButtondownFcn'.
%|
%| H is the callback object's handle (obtained using GCBO).
%|
%| EVENTDATA is empty, but reserved for future use.
%|
%| HANDLES is a structure containing handles of components in GUI using
%| tags as fieldnames, e.g. handles.figure1, handles.slider2. This
%| structure is created at GUI startup using GUIHANDLES and stored in
%| the figure's application data using GUIDATA. A copy of the structure
%| is passed to each callback.  You can store additional information in
%| this structure at GUI startup, and you can change the structure
%| during callbacks.  Call guidata(h, handles) after changing your
%| copy to replace the stored original so that subsequent callbacks see
%| the updates. Type "help guihandles" and "help guidata" for more
%| information.
%|
%| VARARGIN contains any extra arguments you have passed to the
%| callback. Specify the extra arguments by editing the callback
%| property in the inspector. By default, GUIDE sets the property to:
%| <MFILENAME>('<SUBFUNCTION_NAME>', gcbo, [], guidata(gcbo))
%| Add any extra arguments after the last argument, before the final
%| closing parenthesis.



% --------------------------------------------------------------------
function varargout = play_button_Callback(h, eventdata, handles, varargin)

rec=handles.rec;
wavplay(rec,22000);


% --------------------------------------------------------------------
function varargout = record_button_Callback(h, eventdata, handles, varargin)

if length(get(handles.file_edit,'String'))==0
        msgbox('Please first enter file name');
        
else
        
    name=get(handles.file_edit,'String');
%     
%   for i=1:handles.sample_count-1
%          if strcmp(name,filename{i})==1
%              msgbox('Please Enter different file name & Record Again');
%              record_button_Callback(h, eventdata, handles, varargin);
%          end
%      end
    
rec=wavrecord(3*22000,22000);
rec=rec*1/max(rec);
handles.rec=rec;
axes(handles.axes1);
plot(rec);
grid on;
%mx=max(rec);
%mn=min(rec);

handles.file_name=get(handles.file_edit,'String');

file_name=handles.file_name;

%if mx < 0.15 | mn > -0.15
% msgbox('Sample unsuitable! Please speak louder');
%else
   
    srec=srem1(rec);
    axes(handles.axes2);    
    
    plot(srec);
    
    grid on;
    
    %user_count=handles.user_count; % USER COUNT 
% 
%   
    sample_count=handles.sample_count;

    str='Record Sample # ';
%                
    str=strcat(str,num2str(sample_count +1));
%     
%     
    set(handles.sample_txt,'String',str);
%     
%             
       
    %load filename filename;
    
%     for i=1:sample_count
%         if strcmp(name,filename{i})==1
%             msgbox('Please Enter different file name & Record Again');
%         
%     else
%     
    wavwrite(srec,22000,file_name);
    
    %filename{sample_count}=name;
    
    %save filename filename;
    
    %newfeature{user_count}{sample_count}=rec;
%     
%    newfeature{1}{sample_count}='ranjan';    

    %save newfeature newfeature;
%     
%     
     handles.sample_count=handles.sample_count + 1; % SAMPLE COUNT UPDATED
% 
     guidata(h,handles);

  %   if handles.sample_count == 6
   %      handles.sample_count=1;
       %  handles.user_count=handles.user_count+1;
    %     guidata(h,handles);
     %    train;
     % end
    
     %end    
     
end
%end

%end
