/** property next step start **/
$(document).ready(function () {
    const tabs = $(".wizard-tab-form");
    const steps = $(".step");
    let currentTab = 0;

    function displayTab(index) {
        tabs.hide();
        tabs.eq(index).show();

        $("#prevBtn").toggle(index > 0);
        $("#nextBtn").text(index === tabs.length - 1 ? "Submit" : "Continue");

        updateSteps(index);
    }

    function validateForm() {
        let isValid = true;
        let hasShownError = false;

        const fields = tabs.eq(currentTab).find("input:enabled:visible[required], select:enabled:visible[required], textarea:enabled:visible[required]");

        fields.each(function () {
            const field = $(this);
            if (!field.val()) {
                field.addClass("error");
                isValid = false;

                if (!hasShownError) {
                    Notify("error", null, "All required fields must be filled out.");
                    hasShownError = true;
                }
            } else {
                field.removeClass("error");
            }
        });

        if (isValid) {
            steps.eq(currentTab).addClass("finish");
        }

        return isValid;
    }

    function changeTab(step) {
        if (step === 1 && !validateForm()) return;

        if (currentTab === tabs.length - 1 && step === 1) {
            $("#regForm").submit();
            return;
        }

        currentTab += step;

        if (currentTab < 0) currentTab = 0;
        if (currentTab >= tabs.length) currentTab = tabs.length - 1;

        displayTab(currentTab);
    }

    function updateSteps(index) {
        steps.removeClass("active finish");

        steps.each(function (i) {
            if (i < index) {
                $(this).addClass("finish");
            }
        });

        steps.eq(index).addClass("active");

        steps.each(function (i) {
            $(this).find(".numbering").text(i + 1);
        });
    }

    $("#prevBtn").on("click", () => changeTab(-1));
    $("#nextBtn").on("click", () => changeTab(1));

    displayTab(currentTab);
});

/** property next step end **/

var selectAllItems = "#facility_all";
var checkboxItem = ".select-all-facility :checkbox";

$(selectAllItems).on('click', function () {
    $(checkboxItem).prop("checked", this.checked);
});

var selectAllItems1 = "#amenity_all";
var checkboxItem1 = ".select-all-amenity :checkbox";

$(selectAllItems1).on('click', function () {
    $(checkboxItem1).prop("checked", this.checked);
});
// get data by selected category
function toggleFieldsBasedOnCategory(categoryId) {
    $(".tenant_preference_div").addClass("d-none");
    $(".tenant_preference").addClass("d-none");

    if (categoryId == "1") {
        $(".building_name_div").show();
        $(".building_name").prop("disabled", false);

        $(".unit_number_div").show();
        $(".unit_number").prop("disabled", false);

        $(".cat_group_1").show();
        $(".cat_group_1").prop("disabled", false);
        $(".room_category").show();
        $(".room_category").prop("disabled", false);

        // hidden fields
        $(".house_type_div").hide();
        $(".house_type").prop("disabled", true);
        $(".property_type_div").hide();
        $(".property_type").prop("disabled", true);
        $(".land_size_div").hide();
        $(".land_size").prop("disabled", true);
        $(".unit_lot_size_div").hide();
        $(".unit_lot_size").prop("disabled", true);

        $(".completion_year_div").hide();
        $(".completion_year").prop("disabled", true);
        $(".property_rent_div").hide();
        $(".property_rent").prop("disabled", true);
        $(".room_size_div").hide();
        $(".room_size").prop("disabled", true);

        $(".cat_group_2").hide();
        $(".cat_group_2").prop("disabled", true);

        $(".room_residential_type_div").hide();
        $(".room_residential_type").prop("disabled", true);

        $(".land_property_type_div").hide();
        $(".land_property_type").prop("disabled", true);
    } else if (categoryId == "2") {
        $(".house_type_div").show();
        $(".house_type").prop("disabled", false);
        $(".cat_group_1").show();
        $(".cat_group_1").prop("disabled", false);
        $(".room_category").show();
        $(".room_category").prop("disabled", false);
        // hide
        $(".property_type_div").hide();
        $(".property_type").prop("disabled", true);
        $(".unit_lot_size_div").hide();
        $(".unit_lot_size").prop("disabled", true);

        $(".parking_lot_div").hide();
        $(".parking_lot").prop("disabled", true);

        $(".property_rent_div").hide();
        $(".property_rent").prop("disabled", true);

        $(".building_name_div").hide();
        $(".building_name").prop("disabled", true);

        $(".unit_number_div").hide();
        $(".unit_number").prop("disabled", true);

        $(".residential_type_div").hide();
        $(".residential_type").prop("disabled", true);

        $(".floor_range_div").hide();
        $(".floor_range").prop("disabled", true);

        $(".room_size_div").hide();
        $(".room_size").prop("disabled", true);

        $(".land_size_div").hide();
        $(".land_size").prop("disabled", true);

        $(".cat_group_2").hide();
        $(".cat_group_2").prop("disabled", true);

        $(".room_residential_type_div").hide();
        $(".room_residential_type").prop("disabled", true);

        $(".land_property_type_div").hide();
        $(".land_property_type").prop("disabled", true);
    } else if (categoryId == "3") {
        $(".property_type_div").show();
        $(".property_type").prop("disabled", false);
        $(".unit_lot_size_div").show();
        $(".unit_lot_size").prop("disabled", false);
        $(".parking_lot_div").show();
        $(".parking_lot").prop("disabled", false);

        $(".cat_group_2").show();
        $(".cat_group_2").prop("disabled", false);

        $(".house_type_div").hide();
        $(".house_type").prop("disabled", true);

        $(".building_name_div").hide();
        $(".building_name").prop("disabled", true);

        $(".unit_number_div").hide();
        $(".unit_number").prop("disabled", true);

        $(".residential_type_div").hide();
        $(".residential_type").prop("disabled", true);

        $(".floor_range_div").hide();
        $(".floor_range").prop("disabled", true);

        $(".bedroom_div").hide();
        $(".bedroom").prop("disabled", true);

        $(".bathroom_div").hide();
        $(".bathroom").prop("disabled", true);

        $(".property_size_div").hide();
        $(".property_size").prop("disabled", true);

        $(".furnishing_div").hide();
        $(".furnishing").prop("disabled", true);

        $(".property_rent_div").hide();
        $(".property_rent").prop("disabled", true);

        $(".room_size_div").hide();
        $(".room_size").prop("disabled", true);

        $(".land_size_div").hide();
        $(".land_size").prop("disabled", true);

        $(".room_category").hide();
        $(".room_category").prop("disabled", true);

        $(".room_residential_type_div").hide();
        $(".room_residential_type").prop("disabled", true);

        $(".land_property_type_div").hide();
        $(".land_property_type").prop("disabled", true);
    } else if (categoryId == "4") {
        $(".security_deposit_div").show();
        $(".security_deposit").prop("disabled", false);

        $(".cat_group_2").show();
        $(".cat_group_2").prop("disabled", false);
        // hide
        $(".unit_lot_size_div").hide();
        $(".unit_lot_size").prop("disabled", true);

        $(".building_name_div").hide();
        $(".building_name").prop("disabled", true);

        $(".house_type_div").hide();
        $(".house_type").prop("disabled", true);

        $(".unit_number_div").hide();
        $(".unit_number").prop("disabled", true);

        $(".residential_type_div").hide();
        $(".residential_type").prop("disabled", true);

        $(".floor_range_div").hide();
        $(".floor_range").prop("disabled", true);

        $(".bedroom_div").hide();
        $(".bedroom").prop("disabled", true);

        $(".bathroom_div").hide();
        $(".bathroom").prop("disabled", true);

        $(".property_size_div").hide();
        $(".property_size").prop("disabled", true);

        $(".furnishing_div").hide();
        $(".furnishing").prop("disabled", true);

        $(".parking_lot_div").hide();
        $(".parking_lot").prop("disabled", true);

        $(".utility_deposit_div").hide();
        $(".utility_deposit").prop("disabled", true);

        $(".completion_year_div").hide();
        $(".completion_year").prop("disabled", true);

        $(".facilities_div").hide();
        $(".facilities").prop("disabled", true);
        $("#selectAllFacilities").hide();

        $(".property_rent_div").hide();
        $(".property_rent").prop("disabled", true);

        $(".lot_number_div").hide();
        $(".lot_number").prop("disabled", true);

        $(".room_size_div").hide();
        $(".room_size").prop("disabled", true);

        $(".room_category").hide();
        $(".room_category").prop("disabled", true);

        $(".room_residential_type_div").hide();
        $(".room_residential_type").prop("disabled", true);

        $(".property_type_div").hide();
        $(".property_type").prop("disabled", true);
    } else if (categoryId == "5") {
        $(".tenant_preference_div").removeClass("d-none");
        $(".tenant_preference").removeClass("d-none");

        $(".cat_group_2").show();
        $(".cat_group_2").prop("disabled", false);
        // hide
        $(".building_name_div").hide();
        $(".building_name").prop("disabled", true);

        $(".house_type_div").hide();
        $(".house_type").prop("disabled", true);

        $(".bedroom_div").hide();
        $(".bedroom").prop("disabled", true);

        $(".bathroom_div").hide();
        $(".bathroom").prop("disabled", true);

        $(".property_size_div").hide();
        $(".property_size").prop("disabled", true);

        $(".property_type_div").hide();
        $(".property_type").prop("disabled", true);

        $(".utility_deposit_div").hide();
        $(".utility_deposit").prop("disabled", true);

        $(".land_size_div").hide();
        $(".land_size").prop("disabled", true);

        $(".unit_lot_size_div").hide();
        $(".unit_lot_size").prop("disabled", true);

        $(".unit_number_div").hide();
        $(".unit_number").prop("disabled", true);

        $(".property_rent_div").hide();
        $(".property_rent").prop("disabled", true);

        $(".room_category").hide();
        $(".room_category").prop("disabled", true);

        $(".residential_type_div").hide();
        $(".residential_type").prop("disabled", true);

        $(".land_property_type_div").hide();
        $(".land_property_type").prop("disabled", true);
    }
}

$(".nextButton").on("click", function (e) {
    e.preventDefault();

    var selectedCategory = $("#categoryDropdown").val();

    if (selectedCategory) {
        toggleFieldsBasedOnCategory(selectedCategory);
    }
});
