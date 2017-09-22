<?php
class EditJobForm extends BaseForm{
	
    public function __construct(
        $controller,
        $name,
        FieldList $fields = null,
        FieldList $actions = null,
        $validator = null
    ) {
        parent::__construct($controller, $name, $fields, $actions, $validator);
        $this->addExtraClass('js-places-search-form');	       
    }

    public function getFormFields() {

        $fields = parent::getFormFields();
		
        $fields->push(TextField::create('Title','Title')); 
        $typeCodes = Config::inst()->get('Job', 'TypeCode');
        $fields->push(DropdownField::create("Type", 'Type', $typeCodes )); 
        $locationCodes = Config::inst()->get('Job', 'LocationCode');
        $fields->push(DropdownField::create("Location", 'Location', $locationCodes )); 
                
		$fields->push(HiddenField::create('FamilyMemberID','FamilyMemberID'));
		$fields->push(HiddenField::create('RedirectURL','RedirectURL'));
		
		$fields->push(HiddenField::create('ID','ID'));		
		
	    return $fields;
    }

    public function getFormActions() {
        $actions = parent::getFormActions();
        $actions->first()->setTitle('Edit');
        $cancel = FormAction::create('doCancel', 'Cancel')->setUseButtonTag(true);
        $cancel->addExtraClass('secondary');
        $actions->push($cancel);
        return $actions;
    }

    public function getFormValidator() {
        return RequiredFields::create(array('Code'));
    }

    /**
     * @param $data array Data from request vars
     * @param $form The form instance handling the request
     * @param $request SS_HTTPRequest The HTTP Request object
     */
    public function doSubmit($data, $form, $request) {
    	$id = (int)$data['ID'];
    	$job = DataObject::get_by_id('Job',$id);    	
    	$form->saveInto($job);
    	$job->write();
    	 
    	 
		$redirectUrl = urldecode($data['RedirectURL']);
		return $this->getController()->redirect(
				$redirectUrl
		);
		
    }	
}